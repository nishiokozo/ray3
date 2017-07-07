	enum RENDER
	{
		RENDER_NONE,
		RENDER_GDI24,
		RENDER_GDI32,
	};
class	CWindow //: public Cfw
{
	WNDCLASSEX	tWndClass;
	HINSTANCE	hInstance;
	const CHAR*		cpClassName;
	const CHAR*		cpWindowName;
	CHAR*		cpMenu;
	MSG			tMsg;


public:





	BYTE*				GDI_bPixelBits;
	BITMAPINFO			GDI_bmpInfo;
	BITMAPFILEHEADER	GDI_bmpFileHeader;
	int					GDI_bpp;
	int m_width;
	int	m_height;

	RENDER	m_render;
	HWND		m_hWnd;
	CWindow(int w, int h, const char* name, RENDER );
	~CWindow();
//	int wopen( );
	MSG& getMsg(){return tMsg;}
	int run();
	bool runMessage();

	void	entryCallbackPaint( void(*func)(HDC) );
	void	entryCallbackUpdate( void(*func)( CWindow& ));

	void GDI_draw();
	void GDI_create(int bpp );

};
//void	GDI_Draw( HWND hWnd, BYTE* pPixel, int width, int heigit );
