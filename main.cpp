// ver 1.1 2017/07/07 
#include	<iostream>
using namespace std;
#include <string>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <ctype.h>
#include <windows.h>
#include <float.h>
#include <vector>

#include "CWindow.h"
#include "vec.h"


const	static	double INFINIT = DBL_MAX;

struct  Common
{
	vec3	C;
	double	valReflectance;		//	反射率
	double	valRefractive;		//	屈折率
	double	valPower;
	double	valEmissive;
	double	valTransmittance;	//	透過率
};


struct	Surface
{
	enum
	{
		STAT_NONE,
		STAT_OUT,
		STAT_FRONT,
		STAT_BACK,
	};

	double	t;
	bool	flg; 
	int		stat; 
		// 0:none
		// 1:back
		// 2:front
		// 3:inside

	vec3	C;
	vec3	Q;
	vec3	N;
	vec3	R;	//	Reflectionion
	vec3	Rr;	//	Refractive	

	double	valReflectance;
	double	valRefractive;
	double	valPower;
	double	valEmissive;
	double	valTransmittance;

	Surface()
	{
		//memset( this, 0, sizeof(*this) );

		t = INFINIT;
		flg = false;
	}
};


struct Sphere : public Common
{
	vec3	P;
	double	r;

	Sphere( const vec3& _p, double _r, vec3 _c, double _valReflection, double _valRefractive, double _valPower, double _valEmissive, double _valTransmittance )
	{
		//memset( this, 0, sizeof(*this));
		P = _p;
		r = _r;
		C = max(0.0,min(1.0,_c));
		valReflectance	= _valReflection;
		valRefractive	= _valRefractive;
		valPower= _valPower;
		valEmissive	= _valEmissive;
		valTransmittance	= _valTransmittance;
	};
};
struct Plate : public Common
{
	vec3	P;
	vec3	N;

	Plate( const vec3& _p, const vec3& _n, vec3 _c, double _valReflection, double _valRefractive, double _valPower, double _valEmissive, double _valTransmittance )
	{
		//memset( this, 0, sizeof(*this));
		P = _p;
		N = _n;
		C = _c;
		valReflectance = _valReflection;
		valRefractive	= _valRefractive;
		valPower = _valPower;
		valEmissive = _valEmissive;
		valTransmittance = _valTransmittance;
	};
};

struct	Light
{
	vec3	P;
	vec3	C;

	Light( const vec3& _p, const vec3& _c )
	{
		P = _p;
		C = _c;
	}
};

////////////////////////////////////////////////////////////////////////////////
class	Test 
////////////////////////////////////////////////////////////////////////////////
{
	public:
	int m_cntRay;


	//------------------------------------------------------------------------------
	Surface Raycast( vec3& P, const vec3& I )
	//------------------------------------------------------------------------------
	{
		Surface sur;

		P += I*2e-10;



		sur.flg = false;

		sur.t  = INFINIT;
		sur.stat  = Surface::STAT_NONE;

		
		//	球
		for ( int i = 0 ; i < m_cntSphere ; i++ )
		{
			Sphere&	obj = *m_tblSphere[i];

			vec3	O = obj.P;
			double	r = obj.r;

			vec3	OP = P-O;
			double	b = dot( I, OP );
			double	aa = r*r - dot(OP,OP)+ b*b;

			int	stat = 0;

			if ( aa >= 0 )
			{
				double t = - sqrt( aa ) - b;

				if ( t < 0 )
				{
					t = + sqrt( aa ) - b;
					stat++;
				}

				if ( sur.t >= t && t >= 0 )
				{
					stat += 2;

					sur.stat = stat;

					sur.t = t; 

					sur.Q = I * t + P;

					if ( stat == Surface::STAT_BACK )
					{
						sur.N = -normalize(sur.Q - O);
					}
					else
					{
						sur.N = normalize(sur.Q - O);
					}

					sur.C = obj.C;

					sur.R = reflect( I, sur.N );

					sur.valReflectance = obj.valReflectance;

					sur.valRefractive   = obj.valRefractive;

					sur.valPower = obj.valPower;

					sur.valEmissive = obj.valEmissive;

					sur.valTransmittance = obj.valTransmittance;

					sur.flg = true;
				}
			}
		}

		//	床
		for ( int i = 0 ; i < m_cntPlate ; i++ )
		{
			Plate&	obj = *m_tblPlate[i];

			double	f = dot(obj.N,P - obj.P);
			if ( f > 0 )
			{
				double	t = -f/dot(obj.N,I);

				if ( sur.t >= t && t >= 0 )
				{
					sur.stat = Surface::STAT_FRONT;

					sur.t = t; 

					sur.Q = I * t + P;

					sur.N = obj.N;

		#if 0
					if (   (fmod(sur.Q.x+10e3, 1.0) < 0.5 && fmod(sur.Q.z+10e3, 1.0) < 0.5 )
						|| (fmod(sur.Q.x+10e3, 1.0) > 0.5 && fmod(sur.Q.z+10e3, 1.0) > 0.5 ) )
					{
						sur.C = obj.C;
						if ( sur.Q.z > 0 ) sur.C = vec3(1,0,0);
						if ( sur.Q.z <=0 ) sur.C = vec3(0,0,1);
						if ( sur.Q.x >=0 ) sur.C += vec3(0,0.5,0);
						if ( sur.Q.x < 0 ) sur.C += vec3(0,1,0);
					}
					else
					{
						sur.C = obj.C * 0.5;
						if ( sur.Q.z > 0 ) sur.C = vec3(0.5,0,0);
						if ( sur.Q.z <=0 ) sur.C = vec3(0,0,0.5);
						if ( sur.Q.x >=0 ) sur.C += vec3(0,0.25,0);
						if ( sur.Q.x < 0 ) sur.C += vec3(0,0.5,0);
					}
		#else
					if (   (fmod(sur.Q.x+10e3, 1.0) < 0.5 && fmod(sur.Q.z+10e3, 1.0) < 0.5 )
						|| (fmod(sur.Q.x+10e3, 1.0) > 0.5 && fmod(sur.Q.z+10e3, 1.0) > 0.5 ) )
					{
						sur.C = obj.C;
					}
					else
					{
						sur.C = obj.C * 0.5;
					}
		#endif
		
					sur.R = reflect( I, obj.N );
		
	//				sur.Rr = refract( I, obj.N, obj.valRefractive/valRefractive );

					sur.valReflectance = obj.valReflectance;

					sur.valRefractive   = obj.valRefractive;

					sur.valPower = obj.valPower;

					sur.valEmissive = obj.valEmissive;

					sur.valTransmittance = obj.valTransmittance;


					sur.flg = true;
				}
				
			}

		}

		


		return sur;

	}

	//------------------------------------------------------------------------------
	vec3	getAsmosphereLight( const vec3& I )
	//------------------------------------------------------------------------------
	{
		double	p = 0.999999;
		double	b = I.y*p;
		double	t = min(1.0,sqrt(1.0 - p*p + b*b) - b);

		vec3	col = vec3(0);
		col = vec3(0.2,0.4,0.5);
		return	col;
	}

	Sphere*	m_tblSphere[1000];
	Plate*	m_tblPlate[1000];
	Light*	m_tblLight[1000];
	int		m_cntSphere;
	int		m_cntPlate;
	int		m_cntLight;
	vec3	A;
	void	Entry( Sphere* a )
	{
		m_tblSphere[ m_cntSphere++ ] = a;
	}
	void	Entry( Plate* a )
	{
		m_tblPlate[ m_cntPlate++ ] = a;
	}
	void	Entry( Light* a )
	{
		m_tblLight[ m_cntLight++ ] = a;
	}

	//------------------------------------------------------------------------------
	~Test()
	//------------------------------------------------------------------------------
	{
		for ( int i = 0 ; i < m_cntSphere ; i++ ) delete m_tblSphere[i];
		for ( int i = 0 ; i < m_cntPlate  ; i++ ) delete m_tblPlate[i];
		for ( int i = 0 ; i < m_cntLight  ; i++ ) delete m_tblLight[i];
	}
	//------------------------------------------------------------------------------
	Test( string str )
	//------------------------------------------------------------------------------
	{
//		memset( this, 0, sizeof(*this) );
		m_cntRay = 0;
		m_cntSphere = 0;
		m_cntPlate = 0;
		m_cntLight = 0;

		float r,s,pw,e,tm,rl,rr;
		vec3	P,C,N;

		if ( str == "smile" )
		{
		//	X,Y,Z,CR,CG,CB,R,RF,KF,OW,KV
		// _P, _r, _C, _valReflection, _valRefractive, _valPower, _valEmissive, _valTransmittance )

			struct A 
			{
				double x;
				double y;
				double z;
				double r;
				double g;
				double b;
				double radius;
				double rf;
				double kf;
				int pw;
				double kv;
			};
			std::vector<A> tbl = 
			{
				{ 0.0	,0.5	,0.58	,0.0 ,0.1 ,1.0 ,0.5	,0.5 ,0.0 ,16 ,1.4},
				{0.5	,0.5	, 0.29	,0.0 ,1.0 ,0.1 ,0.5	,0.5 ,0.0 ,16 ,1.4},
				{ 0.5	,0.5	, 0.29	,1.0 ,0.1 ,0.1 ,0.5	,0.5 ,0.0 ,16 ,1.4},
				{ 0.0	,1.32	, 0.0		,1.0 ,1.0 ,1.0 ,0.5	,0.8 ,0.0 ,16 ,1.4}
				
			};

			Entry( new Plate( P=vec3( 0  ,  0 ,0.0),N=vec3(0,1,0),C=vec3(0.8,0.8,0.8),rl=0.5,rr=1.0 ,pw=20,e= 0.0,tm=0.0 ) );
			Entry( new Light( vec3( -1  ,  2 ,  -3 ), vec3(1.0, 0.8, 0.6)*10 ) );

/*
			let sphere =
			[
				{x: 0.0	,y:0.5	,z:-0.58	,cr:0.0 ,cg:0.1 ,cb:1.0 ,r:0.5	,rf:0.5 ,kf:0.0 ,pw:16 ,kv:1.4},
				{x:-0.5	,y:0.5	,z: 0.29	,cr:0.0 ,cg:1.0 ,cb:0.1 ,r:0.5	,rf:0.5 ,kf:0.0 ,pw:16 ,kv:1.4},
				{x: 0.5	,y:0.5	,z: 0.29	,cr:1.0 ,cg:0.1 ,cb:0.1 ,r:0.5	,rf:0.5 ,kf:0.0 ,pw:16 ,kv:1.4},
				{x: 0.0	,y:1.32	,z: 0.0		,cr:1.0 ,cg:1.0 ,cb:1.0 ,r:0.5	,rf:0.8 ,kf:0.0 ,pw:16 ,kv:1.4},
			];
			let light =
			[
				{x: 0.2	,y:3.0	,z:0.2	,r:1.0 ,g:1.0 ,b:1.0 ,w:20}
			];
			g_tblPlate.push( new Plate( P=new vec3( 0  ,  0 ,0.0),N=new vec3(0,1,0),C=new vec3(0.8,0.8,0.8),rl=0.5,rr=1.0 ,pw=20,e= 0.0,tm=0.0 ) );
			for ( let a of sphere )
			{
				g_tblSphere.push( new Sphere(
					 P=new vec3( a.x , a.y , a.z )
					,r=a.r 
					,C=new vec3( a.cr, a.cg,  a.cb) 
					,rl=a.rf
					,rr=0.0 
					,pw=a.pw
					,e= 0.0
					,tm=0.0 
				) );
			}
			for ( let a of light )
			{
				g_tblLight.push( new Light( 
					 P=new vec3( a.x ,a.y ,a.z )
					,C=new vec3( a.r*a.w ,a.g*a.w ,a.b*a.w ) 
				));
			
			}
*/
		}
		if ( str == "4balls" )
		{
			Entry( new Plate( P=vec3( 0  ,  0 ,0.0),N=vec3(0,1,0),C=vec3(0.8,0.8,0.8),rl=0.5,rr=1.0 ,pw=20,e= 0.0,tm=0.0 ) );
			Entry( new Sphere(vec3( 0.0 , 1.25, -2       ),   0.5 , vec3(1  , 0.2, 0.2), 0.5, 1.0, 20, 0.0, 0.0 ) );
			Entry( new Sphere(vec3( 0.0 , 0.5 , -2-0.433 ),   0.5 , vec3(0.0, 0.0, 0.0), 1.0, 1.0, 20, 0.0, 0.0 ) );
			Entry( new Sphere(vec3( 0.5 , 0.5 , -2+0.433 ),   0.5 , vec3(0.2, 0.2, 1.0), 0.5, 1.0, 20, 0.0, 0.0 ) );
			Entry( new Sphere(vec3(-0.5 , 0.5 , -2+0.433 ),   0.5 , vec3(0.0, 1.0, 0.0), 0.5, 1.0, 20, 0.0, 0.0 ) );
			Entry( new Light( vec3( 4   ,  2 , -1 ), vec3(0.6, 0.8, 1.0)*40 ) );
			Entry( new Light( vec3( -1  ,  2 ,  -3 ), vec3(1.0, 0.8, 0.6)*10 ) );
			A = vec3( 0.2,0.4,0.6)*0.0;
		}
		if ( str == "5metals" )
		{
			Entry( new Plate( P=vec3( 0  ,  0 ,0.0),N=vec3(0,1,0)              ,C=vec3(0.8,0.8,0.8) ,rl=0.5,rr=1.0 ,pw=20 ,e= 0.0,tm=0.0 ) );
			Entry( new Sphere(vec3(-2.0 , 0.5 , -2 ),   0.5 , vec3(0.0, 0.0, 0.0), 1.0 , 1.0, 20, 0.0, 0.0 ) );
			Entry( new Sphere(vec3(-1.0 , 0.5 , -2 ),   0.5 , vec3(0.0, 0.0, 0.0), 0.75, 1.0, 20, 0.0, 0.0 ) );
			Entry( new Sphere(vec3( 0.0 , 0.5 , -2 ),   0.5 , vec3(0.0, 0.0, 0.0), 0.5 , 1.0, 20, 0.0, 0.0 ) );
			Entry( new Sphere(vec3( 1.0 , 0.5 , -2 ),   0.5 , vec3(0.0, 0.0, 0.0), 0.25, 1.0, 20, 0.0, 0.0 ) );
			Entry( new Sphere(vec3( 2.0 , 0.5 , -2 ),   0.5 , vec3(0.0, 0.0, 0.0), 0.0 , 1.0, 20, 0.0, 0.0 ) );
			Entry( new Light( vec3( 0   ,  20 ,  -2 ), vec3(1.0, 1.0, 1.0)*800 ) );
			A = vec3( 0.2,0.4,0.6)*1.0;
		}
		if ( str == "ring" )
		{
////		#if 0 // ring
			Entry( new Plate( P=vec3( 0  ,  0 ,0.0),N=vec3(0,1,0),C=vec3(0.8,0.8,0.8),rl=0.5,rr=1.0 ,pw=20,e= 0.0,tm=0.0 ) );
			Entry( new Sphere(  vec3( 0 , 1.0 , 0 ),   0.5 ,  vec3(0.0, 0.0, 0.0),   0.5,   1.0 ,  100,  0.0,  0.0 ) );
			int	max = 16*3;
			for ( int i = 0 ; i < max ; i++ )
			{
				double	th  = (double)i *(pi/360)*16 * 3;
				double	th2 = (double)i *(pi/360)*16 * 0.5;
				double	x = cos(th);
				double	z = sin(th) ;
				double	y = cos(th2) +1.2;
		//		double	y = (x+z)/2 +1.0;
				Entry( new Sphere(P=vec3( x , y , z ),r=0.2 ,C=vec3( x, y,  z) ,rl=0.2,rr=0.0 ,pw=100,e= 0.0,tm=0.0 ) );

			}
			Entry( new Light( vec3( 0   ,  30 ,  0 ), vec3(1,1,1)*1800 )  );
			Entry( new Light( vec3(-30   ,  30 ,  0 ), vec3(0.5,1,1)*1800 )  );
			Entry( new Light( vec3(60   ,  80 ,  0 ), vec3(1,1,0.5)*4800 )  );
			Entry( new Light( vec3(-60   ,  80 , 0 ), vec3(1,0.5,1)*4800 )  );
			A = vec3( 0.2,0.4,0.6)*0.0;
//		#endif
		}

		if ( str == "twinballs" )
		{
//		#if 0 //twin balls
			Entry( new Plate( vec3( 0   ,  0 ,  0    ), normalize(vec3(0, 1,0))  , vec3(0.8, 0.8, 0.8), 0.5, 1.0, 20, 0.0, 0.0 ) );
			Entry( new Sphere(vec3(-1.0 , 1.0 , -2 ),   1.0 , vec3(1.0, 0.5, 0.5), 0.2, 1.0, 20, 0.0, 0.0 ) );
			Entry( new Sphere(vec3( 1.0 , 1.0 , -2 ),   1.0 , vec3(0.0, 0.0, 0.0), 0.2, 1.0, 20, 0.0, 0.0 ) );
			Entry( new Light( vec3( 0   ,  20 ,  -2 ), vec3(1.0, 1.0, 1.0)*800 ) );
			A = vec3( 0.2,0.4,0.6)*1.0;
//		#endif
		}
		
		if ( str == "colorballs" )
		{
			Entry( new Plate( P=vec3(0  , 0 ,0.0),N=vec3(0,1,0),C=vec3(0.8,0.8,0.8),rl=0.5,rr=1.0 ,pw=20,e= 0.0,tm=0.0 ) );
			Entry( new Sphere(P=vec3( 0.5,1.0,3.0),r=0.5       ,C=vec3(0.0,0.0,1.0),rl=0.5,rr=1.0 ,pw=20,e=10.0,tm=0.0 ) );
			Entry( new Sphere(P=vec3(-0.5,1.0,3.0),r=0.5       ,C=vec3(0.0,1.0,0.0),rl=0.5,rr=1.0 ,pw=20,e=10.0,tm=0.0 ) );
			Entry( new Sphere(P=vec3( 0.0,1.5,3.0),r=0.5       ,C=vec3(1.0,0.0,0.0),rl=0.5,rr=1.0 ,pw=20,e=10.0,tm=0.0 ) );
			Entry( new Sphere(P=vec3( 0.0,0.5,3.0),r=0.5       ,C=vec3(1.0,1.0,0.0),rl=0.5,rr=1.0 ,pw=20,e=10.0,tm=0.0 ) );
			Entry( new Sphere(P=vec3( 0.0,1.0,2.75),r=0.25      ,C=vec3(1.0,1.0,1.0),rl=0.5,rr=1.0 ,pw=20,e=10.0,tm=0.0 ) );
			Entry( new Light( P=vec3( 1.0 ,15, 0 )          ,C=vec3(1,1,1)*360 )  );
			A = vec3( 0.2,0.4,0.6)*0.5;
		}
	}

	//------------------------------------------------------------------------------
	vec3 Raytrace( vec3 P, vec3 I )
	//------------------------------------------------------------------------------g
	{
		vec3 ret = vec3(0,0,0);

		if ( m_cntRay > 5 ) return ret;
		m_cntRay++;

		Surface sur;
//		Light&	lgt = *m_tblLight[0];
		vec3	Lc;
		vec3	L;
		float	d;
		float	s=0;
		float	r=0;
		float	t=0;
		
		if ( (sur = Raycast( P, I )).flg )
		{
			for ( int i = 0 ; i < m_cntLight ; i++ )
			{
				Light&	lgt = *m_tblLight[i];

				L	= normalize(sur.Q - lgt.P);
				Lc	= lgt.C / dot(sur.Q - lgt.P, sur.Q - lgt.P);
				d	= 0;//max( 0.0, dot( sur.N, -L ) );
				s	= 0;//(sur.valPower+2)/(8*pi)*pow( max( 0.0, dot( sur.R, -L ) ), sur.valPower );
				r	= sur.valReflectance;

				{// 遮蔽物判定＆スペキュラ計算
					Surface sur3 = Raycast( sur.Q, sur.R );
					if ( !sur3.flg )
					{
						s	= (sur.valPower+2)/(8*pi)*pow( max( 0.0, dot( sur.R, -L ) ), sur.valPower );
					}
					else
					{
						s = 0;
					}
				}

				ret += r* (Raytrace( sur.Q, sur.R )+s) * Lc;

				{// 遮蔽物判定＆デフューズ計算
					Surface sur2 = Raycast( sur.Q, -L );
					if ( !sur2.flg )
					{
						d	= max( 0.0, dot( sur.N, -L ) );
					}
				}

				if ( sur.valTransmittance == 0.0 )
				{
					ret += (1-r)*( d * sur.C ) * Lc;
				}
				else
				{
					I = refract( I, sur.N, sur.valRefractive/1.0 );
					sur = Raycast( sur.Q, I );



					I = refract( I, sur.N, 1.0/sur.valRefractive );
					ret += (1-r)*Raytrace( sur.Q, I );
				}
			}

		}
		else
		{
/*
	//		ret = A;
			L = normalize(sur.Q - lgt.P);
			Lc = lgt.C / dot(sur.Q - lgt.P, sur.Q - lgt.P);
	//		d =       max( 0, dot( sur.N, -L ) );
	int n = 20;
	//		s =  (n+2)/(8*pi)*pow( max( 0, dot( I, -L ) ), n );
	ret += s;
*/
		}

		return ret;
	}
	//------------------------------------------------------------------------------
	void	Paint( unsigned char* to, int height, int width, int size )
	//------------------------------------------------------------------------------
	{

		vec3	posScr = vec3(0,1.0,-12+8);
		vec3	posEye = vec3(0,1.0,-17+8);

		float r,s,p,e,t,rl,rr;
		vec3	C;

		int	cntMax = 0;
		int	cntRay = 0;

		double aspect = (double)width/(double)height;


		for( int py = 0 ; py < height ; py++ )
		{
			for( int px = 0 ; px < width ; px++ )
			{
				double x = ((double)px / width)*aspect *2.0-1.0*aspect;
				double y = ((double)py / height) *2.0-1.0;
				vec3	P = vec3( x, y, 0 ) + posScr;
				vec3	I = normalize(P - posEye);

				double	valRefractive = 1.0;

				m_cntRay = 0;
				int	cntNext = 0;
		 		C = Raytrace( P, I );
				if ( m_cntRay > cntMax ) cntMax = m_cntRay;
				cntRay+= m_cntRay;

				int r = min( 255, (int)(255*C.r) );
				int g = min( 255, (int)(255*C.g) );
				int b = min( 255, (int)(255*C.b) );

				to[py*width*3 + px*3 +0] = b;
				to[py*width*3 + px*3 +1] = r;
				to[py*width*3 + px*3 +2] = g;
			}
		}
		
	}

};	


static LARGE_INTEGER nFreq;
//------------------------------------------------------------------------------
double	getPerformanceTime()
//------------------------------------------------------------------------------
{
	QueryPerformanceFrequency(&nFreq);

	LARGE_INTEGER time2;
	QueryPerformanceCounter(&time2);
	double time = ((double)(time2.QuadPart) / (double)nFreq.QuadPart);

	return time;
}
//------------------------------------------------------------------------------
int main()
//------------------------------------------------------------------------------
{
	#define SIZwidth 800
	#define SIZheight 480
	CWindow	win(SIZwidth,SIZheight,"Raytracing   " __DATE__, RENDER_GDI24);

//		printf("CC_MAX %fsec\n", INFINIT );


//	Test test( "colorballs" );
//	Test test( "twinballs" );
	Test test( "ring" );
//	Test test( "5metals" );
//	Test test( "4balls" );
//	Test test( "smile" );


	int cnt = 0;

	while( win.runMessage() )
	{
		double	time1 = getPerformanceTime();

		test.Paint( win.GDI_bPixelBits, win.m_height, win.m_width, 3 );

		double	time2 = getPerformanceTime();

		if ( cnt++ < 3 ) printf("time %fsec\n", time2-time1 );
	}

	return 0;

}
