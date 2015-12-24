unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    edt1: TEdit;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }




  public
    { Public declarations }
  end;
    HookProc=procedure(State: Boolean); stdcall;


var
  Form1: TForm1;
  SetHook: HookProc;
   DllHandle: HWND;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 SetHook(True);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 SetHook(False);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
DllHandle:=LoadLibrary('dll_hook.dll');
if DllHandle=0 then
  ShowMessage(IntToStr(GetLastError))
else
  @SetHook:=GetProcAddress(DllHandle, 'SetHook');

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DllHandle<>0 then
  FreeLibrary(DllHandle);
end;

end.
