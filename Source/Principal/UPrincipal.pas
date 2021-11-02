unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts,
  FMX.ActnList, System.Actions, FMX.TabControl,FireDAC.DApt, FMX.ListBox,
  FMX.Ani, FMX.ScrollBox, FMX.Memo, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope,FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, Data.DB, FireDAC.Comp.DataSet,
  FMX.TreeView, FMX.Memo.Types
 {$IF DEFINED(iOS) or DEFINED(ANDROID)}
  ,AndroidApi.helpers,AndroidApi.JNI.JavaTypes,AndroidApi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Os,Androidapi.JNIBridge
 {$ENDIF}
 {$IFDEF MSWINDOWS}
  ,Winapi.Windows
 {$ENDIF}
  ;


type
  TfrmPrincipal = class(TForm)
    TbPrincipal: TTabControl;
    tbiLogin: TTabItem;
    rect_update: TRectangle;
    Layout2: TLayout;
    Layout1: TLayout;
    img_seta: TImage;
    layloginCenter: TLayout;
    Rectangle1: TRectangle;
    Layout4: TLayout;
    Layout3: TLayout;
    Label1: TLabel;
    Layout6: TLayout;
    Layout7: TLayout;
    Label2: TLabel;
    cbxLogin: TComboBox;
    Layout5: TLayout;
    Layout8: TLayout;
    Label3: TLabel;
    Layout9: TLayout;
    btnEntrar: TRectangle;
    LaybtnEntrar: TLayout;
    Label4: TLabel;
    Image1: TImage;
    layInf: TLayout;
    Rectangle4: TRectangle;
    recTop: TRectangle;
    Layout10: TLayout;
    lbl_titulo: TLabel;
    btnClose: TImage;
    tbiMnu: TTabItem;
    laymnu: TLayout;
    Layout11: TLayout;
    Rectangle5: TRectangle;
    Layout12: TLayout;
    Layout13: TLayout;
    layInfMnu: TLayout;
    Rectangle10: TRectangle;
    lblVersao: TLabel;
    recTopMnu: TRectangle;
    layTopmnu: TLayout;
    Label11: TLabel;
    Image4: TImage;
    tbiConfig: TTabItem;
    Layout18: TLayout;
    Layout19: TLayout;
    VertScrollBox1: TVertScrollBox;
    Rectangle7: TRectangle;
    Layout20: TLayout;
    Layout21: TLayout;
    Layout22: TLayout;
    Rectangle8: TRectangle;
    Layout23: TLayout;
    Rectangle17: TRectangle;
    Layout30: TLayout;
    Layout31: TLayout;
    Label14: TLabel;
    edtIpServidorDados: TEdit;
    Layout32: TLayout;
    btnConfirmar: TRectangle;
    Image9: TImage;
    ShadowEffect1: TShadowEffect;
    Label16: TLabel;
    Rectangle2: TRectangle;
    Layout24: TLayout;
    Layout25: TLayout;
    Label10: TLabel;
    edtPortaServidorDados: TEdit;
    Layout27: TLayout;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    Layout28: TLayout;
    Label18: TLabel;
    Image14: TImage;
    tbiSync: TTabItem;
    Rectangle24: TRectangle;
    Layout35: TLayout;
    Label21: TLabel;
    btnFechaSync: TImage;
    Rectangle19: TRectangle;
    Image17: TImage;
    Label19: TLabel;
    imgMnu: TImage;
    StyleBook1: TStyleBook;
    Rectangle3: TRectangle;
    laySelectSync: TLayout;
    imgSync: TImage;
    Animacao: TFloatAnimation;
    Layout36: TLayout;
    btnEnviar: TRectangle;
    Image12: TImage;
    ShadowEffect10: TShadowEffect;
    Label22: TLabel;
    Layout39: TLayout;
    Rectangle12: TRectangle;
    Image13: TImage;
    ShadowEffect16: TShadowEffect;
    lblScorePasto: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    mlog: TMemo;
    edtSenha: TEdit;
    LinkFillControlToField1: TLinkFillControlToField;
    Layout16: TLayout;
    bntConfiguracao: TRectangle;
    Image3: TImage;
    ShadowEffect7: TShadowEffect;
    Label7: TLabel;
    Layout14: TLayout;
    btnScore: TRectangle;
    Image2: TImage;
    ShadowEffect3: TShadowEffect;
    Label5: TLabel;
    Layout15: TLayout;
    btnSync: TRectangle;
    Image5: TImage;
    ShadowEffect4: TShadowEffect;
    Label6: TLabel;
    imgScore: TImage;
    Layout17: TLayout;
    imgListaPreto: TImage;
    ClearEditButton1: TClearEditButton;
    PasswordEditButton1: TPasswordEditButton;
    procedure btnEntrarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnEntrarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnConfirmarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnConfirmarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnEnviarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnEnviarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure btnFechaSyncClick(Sender: TObject);
    procedure Rectangle19Click(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure bntConfiguracaoClick(Sender: TObject);
    procedure btnSyncClick(Sender: TObject);
    procedure btnScoreClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    {$IF DEFINED(iOS) or DEFINED(ANDROID)}
     function  GetVersaoArq: string;
    {$ENDIF}
    {$IFDEF MSWINDOWS}
     function  GetVersaoArqWin:string;
    {$ENDIF}
  public
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.XLgXhdpiTb.fmx ANDROID}

uses UDmDB, UDmSyncData, UScorePasto;

procedure TfrmPrincipal.bntConfiguracaoClick(Sender: TObject);
begin
 dmDB.qryConfig.Close;
 dmDB.qryConfig.Open;
 if dmDB.qryConfig.IsEmpty then
  dmDB.qryConfig.Insert
 else
  dmDB.qryConfig.Edit;
 edtIpServidorDados.Text    := dmDB.qryConfigIP_SERVIDOR.AsString;
 edtPortaServidorDados.Text := dmDB.qryConfigPOTA_SERVIDOR.AsString;
 MudarAba(tbiConfig,sender);
end;

procedure TfrmPrincipal.btnCloseClick(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TfrmPrincipal.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
   actMudarAba.Tab := ATabItem;
   actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmPrincipal.Rectangle19Click(Sender: TObject);
begin
 MudarAba(tbiMnu,sender);
end;

procedure TfrmPrincipal.btnConfirmarClick(Sender: TObject);
var
 vResult:string;
begin
if edtIpServidorDados.Text.IsEmpty then
 begin
  ShowMessage('Informe o Host do Servidor');
  edtIpServidorDados.SetFocus;
  Exit;
 end;
 if edtPortaServidorDados.Text.IsEmpty then
 begin
  ShowMessage('Informe a Porta do Servidor');
  edtPortaServidorDados.SetFocus;
  Exit;
 end;
 dmDB.qryConfig.Edit;
 dmdb.qryConfigIP_SERVIDOR.AsString      := edtIpServidorDados.Text;
 dmdb.qryConfigPOTA_SERVIDOR.AsString    := edtPortaServidorDados.Text;
 try
   dmdb.qryConfig.ApplyUpdates(-1);
   dmSync.host  := edtIpServidorDados.Text;
   dmSync.Porta := edtPortaServidorDados.Text;
 except
 on E : Exception do
   ShowMessage('Erro ao inserir Configuração : '+E.Message);
 end;
   if dmdb.vPrimeiroAcesso then
   begin
    try
       vResult := dmSync.GetUsuario;
       if vResult='Usuarios Baixados com Sucesso' then
       begin
           ShowMessage('Usuarios baixados com sucesso');
           dmDB.vPrimeiroAcesso := false;
           dmDB.FCon.Commit;
           dmDB.TUsuario.Close;
           dmDB.TUsuario.Open;
           MudarAba(tbiLogin,Sender);
       end
       else
       begin
         ShowMessage(vResult);
       end;
     except
     on E : Exception do
       ShowMessage('Erro ao baixar Usuario: '+E.Message);
     end;
   end
   else
    MudarAba(tbiMnu,Sender);
end;

procedure TfrmPrincipal.btnConfirmarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  (Sender as TRectangle).Opacity :=0.5;
end;

procedure TfrmPrincipal.btnConfirmarMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 (Sender as TRectangle).Opacity :=1;
end;

procedure TfrmPrincipal.btnEntrarClick(Sender: TObject);
begin
 if cbxLogin.ItemIndex=-1  then
 begin
   ShowMessage('Informe o usuario!');
   Exit;
 end;
 if edtSenha.Text.IsEmpty  then
 begin
   ShowMessage('Informe a Senha!');
   edtSenha.SetFocus;
   Exit;
 end;
 if dmDB.AutenticaUsuario(cbxLogin.Selected.Text,edtSenha.Text)then
 begin
  MudarAba(tbiMnu,sender);
  imgMnu.Position.Y := 0;
  imgMnu.Opacity := 0;
  imgMnu.AnimateFloatDelay('Position.Y', 50, 0.5, 1, TAnimationType.Out, TInterpolationType.Back);
  imgMnu.AnimateFloatDelay('Opacity', 1, 0.4, 0.9);

 end
 else
  ShowMessage('Usuario ou senha invalidos!');
end;

procedure TfrmPrincipal.btnEntrarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 (Sender as TRectangle).Opacity :=0.5;
end;

procedure TfrmPrincipal.btnEntrarMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 (Sender as TRectangle).Opacity :=1;
end;

procedure TfrmPrincipal.btnEnviarClick(Sender: TObject);
begin
  if dmSync.TestaServidor<>'Erro' THEN
  begin
   Animacao.Start;
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
     mlog.Lines.Add('Enviando Animais Pasto');
    end);
    mlog.Lines.Add(dmSync.PostDetAnimalPasto);

    TThread.Synchronize(nil, procedure
    begin
     mlog.Lines.Add('Enviando Scores');
    end);
    mlog.Lines.Add(dmSync.PostScore);

    TThread.Synchronize(nil, procedure
    begin
     mlog.Lines.Add('Baixando Usuarios');
    end);
    mlog.Lines.Add(dmSync.GetUsuario);

    TThread.Synchronize(nil, procedure
    begin
     mlog.Lines.Add('Baixando Capim');
    end);
    mlog.Lines.Add(dmSync.GetCapim);

    TThread.Synchronize(nil, procedure
    begin
     mlog.Lines.Add('Baixando Categoria Animal');
    end);
    mlog.Lines.Add(dmSync.GetCategoria);

    TThread.Synchronize(nil, procedure
    begin
     mlog.Lines.Add('Baixando Retiros');
    end);
    mlog.Lines.Add(dmSync.GetRetiro);

    TThread.Synchronize(nil, procedure
    begin
     mlog.Lines.Add('Baixando Pastos');
    end);
    mlog.Lines.Add(dmSync.GetPasto);

    TThread.Synchronize(nil, procedure
    begin
     mlog.Lines.Add('Baixando Animais Pasto');
    end);
    mlog.Lines.Add(dmSync.GetDetAnimal);

    TThread.Synchronize(nil, procedure
    begin
     mlog.Lines.Add('Baixando Historico Score');
    end);
    mlog.Lines.Add(dmSync.GetHistScore);

    TThread.Synchronize(nil, procedure
    begin
     Animacao.Stop;
     dmDB.FCon.Commit;
     dmDB.FCon.Connected := false;
     dmDB.FCon.Connected;
     ShowMessage('Dados Baixados com Sucesso Sistema!');
     dmSync.TScorePasto.Close;
     dmSync.TScorePasto.Open;
     lblScorePasto.Text   := 'Score Pasto Pendente :'+IntToStr(dmSync.TScorePasto.RecordCount);
    end);
   end).Start;
  end
  else
  begin
    ShowMessage('Erro ao se conectar com servidor!');
    Animacao.Stop;
  end;
end;

procedure TfrmPrincipal.btnEnviarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  (Sender as TRectangle).Opacity :=0.5;
end;

procedure TfrmPrincipal.btnEnviarMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 (Sender as TRectangle).Opacity :=1;
end;

procedure TfrmPrincipal.btnFechaSyncClick(Sender: TObject);
begin
 MudarAba(tbiMnu,sender);
end;

procedure TfrmPrincipal.btnScoreClick(Sender: TObject);
begin
  frmScorePasto:= TfrmScorePasto.Create(nil);
  frmScorePasto.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = mrOK then
      frmScorePasto.DisposeOf;
  end);
end;

procedure TfrmPrincipal.btnSyncClick(Sender: TObject);
begin
 dmSync.TScorePasto.Close;
 dmSync.TScorePasto.Open;
 lblScorePasto.Text   := 'Score Pasto Pendente :'+IntToStr(dmSync.TScorePasto.RecordCount);
 MudarAba(tbiSync,sender);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
 TThread.CreateAnonymousThread(procedure
 begin
   TThread.Synchronize(nil,procedure
   begin
      {$IFDEF MSWINDOWS}
        lblversao.text                 := GetVersaoArqWin;
        dmdb.CreateTablesVersao(GetVersaoArqWin);
      {$ENDIF}
      {$IF DEFINED(iOS) or DEFINED(ANDROID)}
        lblversao.text                 := GetVersaoArq;
        dmdb.CreateTablesVersao(GetVersaoArq);
      {$ENDIF}
      TbPrincipal.TabPosition := TTabPosition.None;
      rect_update.Visible := true;
      img_seta.Position.Y := 0;
      img_seta.Opacity := 0;
      layInf.Opacity := 0;
      recTop.Opacity := 0;

      layloginCenter.Opacity := 0;
      rect_update.BringToFront;
      rect_update.AnimateFloat('Margins.Top', 0, 0.8, TAnimationType.InOut, TInterpolationType.Circular);
      img_seta.AnimateFloatDelay('Position.Y', 50, 0.5, 1, TAnimationType.Out, TInterpolationType.Back);
      img_seta.AnimateFloatDelay('Opacity', 1, 0.4, 0.9);
      recTop.AnimateFloatDelay('Opacity', 1, 0.7, 1);
      layInf.AnimateFloatDelay('Opacity', 1, 0.7, 1.3);
      layloginCenter.AnimateFloatDelay('Opacity', 1,0.7, 2);
   end);
 end).Start;
 dmDB.qryConfig.Close;
 dmDB.qryConfig.Open;
 dmSync.host  := dmDB.qryConfigIP_SERVIDOR.AsString;
 dmSync.Porta := dmDB.qryConfigPOTA_SERVIDOR.AsString;
  dmDB.TUsuario.Close;
  dmDB.TUsuario.Open;
  if dmDB.TUsuario.IsEmpty then
   begin
     dmDB.vPrimeiroAcesso   := true;
     if dmDB.qryConfig.IsEmpty then
      dmDB.qryConfig.Insert
     else
      dmDB.qryConfig.Edit;
     edtIpServidorDados.Text     := dmDB.qryConfigIP_SERVIDOR.AsString;
     edtPortaServidorDados.Text  := dmDB.qryConfigPOTA_SERVIDOR.AsString;
     tbPrincipal.ActiveTab       := tbiConfig;
   end
   else
   begin
     dmDB.vPrimeiroAcesso      := false;
     tbPrincipal.ActiveTab     := tbiLogin;
     cbxLogin.SetFocus;
   end;
end;
procedure TfrmPrincipal.Image14Click(Sender: TObject);
begin
 if dmDB.vPrimeiroAcesso then
  MudarAba(tbiLogin,Sender)
 else
  MudarAba(tbiMnu,Sender);
end;

procedure TfrmPrincipal.Image4Click(Sender: TObject);
begin
 Close;
end;

{$IF DEFINED(iOS) or DEFINED(ANDROID)}
function TfrmPrincipal.GetVersaoArq: string;
var
 PKGInfo:JPackageInfo;
begin
 PKGInfo := SharedActivity.getPackageManager.getPackageInfo(
   SharedActivity.getPackageName,0);
 result := JStringToString(PKGInfo.VersionName)
end;
{$ENDIF}

{$IFDEF MSWINDOWS}
function TfrmPrincipal.GetVersaoArqWin: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(
  ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0,
  VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue),
  VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(
    dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(
    dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(
    dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;
{$ENDIF}

end.
