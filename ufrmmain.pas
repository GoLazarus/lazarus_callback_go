unit uFrmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, libgo;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure FFCallbackForForm(rev:longint); cdecl; // stdcall;
begin
  frmMain.Memo1.Lines.Add('Go Result = ' + inttostr(rev));
end;

procedure FFCallbackForForm2(rev:longint); cdecl; // stdcall;
begin
  frmMain.Memo1.Lines.Add('Go Result2 = ' + inttostr(rev));
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  CallBackFunc(1, @FFCallbackForForm);
  CallBackFunc(2, @FFCallbackForForm2);
end;



end.

