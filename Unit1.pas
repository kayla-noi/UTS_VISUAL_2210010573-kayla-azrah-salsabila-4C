unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    lbl3: TLabel;
    edt3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    dbgrd1: TDBGrid;
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : string;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button4Click(Sender: TObject);
begin
edt1.Text:='';
edt2.Text:='';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
edt1.Text:=dtmdl1.zqry1.Fields[1].AsString;
edt2.Text:=dtmdl1.zqry1.Fields[2].AsString;
a :=dtmdl1.zqry1.Fields[0].AsString;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
with dtmdl1.zqry1 do
begin
     SQL.Clear;
     SQL.Add('delete from satuan where id="'+a+'"');
     ExecSQL;

     SQL.Clear;
     SQL.Add('select * from satuan');
     Open;
end;
   ShowMessage('Data Berhasil DiDelete!');
end else
begin
  ShowMessage('Data Batal Dihapus!');
end;
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
begin
dtmdl1.zqry1.SQL.Clear;
dtmdl1.zqry1.SQL.Add('insert into satuan values(null,"'+edt1.Text+'", "'+edt2.Text+'")');
dtmdl1.zqry1.ExecSQL ;

dtmdl1.zqry1.SQL.Clear;
dtmdl1.zqry1.SQL.Add('select * from satuan');
dtmdl1.zqry1.Open;
ShowMessage('Data Berhasil Disimpan!');
end;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= dtmdl1.zqry1.Fields[1].AsString;
edt2.Text:=dtmdl1.zqry1.Fields[2].AsString;
a:=dtmdl1.zqry1.Fields[0].AsString;
end;

end.
