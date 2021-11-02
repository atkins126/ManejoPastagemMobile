unit UScorePasto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.Effects, FMX.ListBox, FMX.ListView, FMX.StdCtrls, FMX.Edit,
  FMX.DateTimeCtrls, FMX.Controls.Presentation, FMX.Objects, FMX.TabControl,
  FMX.Layouts, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, FMX.Gestures, FMX.TMSBaseControl, FMX.TMSTrackBar,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, Fmx.Bind.Grid, Data.Bind.Grid;

type
  TfrmScorePasto = class(TForm)
    layBase: TLayout;
    recPrincipal: TRectangle;
    tbPrincipal: TTabControl;
    tbiLista: TTabItem;
    Rectangle3: TRectangle;
    Layout5: TLayout;
    btnNovoForn: TRectangle;
    Image9: TImage;
    Label7: TLabel;
    ToolBar2: TToolBar;
    Layout3: TLayout;
    Lista: TListView;
    btnExcluiItem: TRectangle;
    Image1: TImage;
    lblExcluir: TLabel;
    tbiCad: TTabItem;
    layTBICad: TLayout;
    Rectangle1: TRectangle;
    Layout6: TLayout;
    Layout7: TLayout;
    Rectangle4: TRectangle;
    Image3: TImage;
    Label3: TLabel;
    btnSalvarGrupo: TRectangle;
    Image5: TImage;
    Label19: TLabel;
    TimerMsg: TTimer;
    laymsg: TLayout;
    RecStatusAcao: TRectangle;
    layBaseMSG: TLayout;
    Layout23: TLayout;
    Layout24: TLayout;
    Layout25: TLayout;
    ShadowEffect14: TShadowEffect;
    layBtnControls: TLayout;
    SEffectBtnConfirm1: TShadowEffect;
    btnConfirmar: TRectangle;
    layBntConfirm: TLayout;
    imgBntConfirm: TImage;
    lblBtnConfirm: TLabel;
    SEffectBtnConfirm: TShadowEffect;
    btnCancel: TRectangle;
    layBtnCancel: TLayout;
    ImgBtnCancel: TImage;
    lblBtnCancel: TLabel;
    SEffectBtnCancel: TShadowEffect;
    lblmsg: TLabel;
    Image8: TImage;
    recTopMnu: TRectangle;
    layTopmnu: TLayout;
    Label11: TLabel;
    Image4: TImage;
    Rectangle2: TRectangle;
    Layout4: TLayout;
    Label2: TLabel;
    Layout8: TLayout;
    Rectangle5: TRectangle;
    laymnuF: TLayout;
    Layout9: TLayout;
    Rectangle15: TRectangle;
    cbxRetiro: TComboBox;
    Label1: TLabel;
    Image2: TImage;
    layDadosAnteriores: TLayout;
    Rectangle6: TRectangle;
    Layout11: TLayout;
    Label6: TLabel;
    Label8: TLabel;
    Layout12: TLayout;
    Label10: TLabel;
    Label12: TLabel;
    Layout14: TLayout;
    Layout16: TLayout;
    Layout17: TLayout;
    Layout20: TLayout;
    Label4: TLabel;
    lblStatus: TLabel;
    Layout27: TLayout;
    cbxPasto: TComboBox;
    cbxCategoria: TComboBox;
    SwStatus: TSwitch;
    lblsws: TLabel;
    btnLimpaFiltro: TButton;
    recDadosAtuais: TRectangle;
    Rectangle7: TRectangle;
    imgFiltroLista: TImage;
    recFiltros: TRectangle;
    Layout1: TLayout;
    edtRetiroF: TEdit;
    Label17: TLabel;
    Label9: TLabel;
    edtPastoF: TEdit;
    Label16: TLabel;
    edtDataF: TDateEdit;
    Button1: TButton;
    layDadosGeral: TLayout;
    img_seta: TImage;
    Layout2: TLayout;
    Image6: TImage;
    laydetanimaispasto: TLayout;
    Rectangle9: TRectangle;
    Layout18: TLayout;
    ToolBar5: TToolBar;
    Rectangle10: TRectangle;
    lblLayAnimais: TLabel;
    Image7: TImage;
    tbAnimais: TTabControl;
    tbiEntradas: TTabItem;
    Rectangle11: TRectangle;
    Rectangle8: TRectangle;
    Layout19: TLayout;
    Layout22: TLayout;
    Label22: TLabel;
    Label23: TLabel;
    Layout28: TLayout;
    btnConfirmaEntrada: TRectangle;
    Label24: TLabel;
    Image11: TImage;
    Rectangle12: TRectangle;
    Layout29: TLayout;
    Layout30: TLayout;
    Label25: TLabel;
    edtDataEnt: TDateEdit;
    tbiSaidas: TTabItem;
    Rectangle13: TRectangle;
    Rectangle14: TRectangle;
    Layout33: TLayout;
    btnConfirmaSaida: TRectangle;
    Label31: TLabel;
    Image12: TImage;
    Rectangle16: TRectangle;
    Layout34: TLayout;
    Layout35: TLayout;
    Label32: TLabel;
    Label33: TLabel;
    edtDataSaida: TDateEdit;
    edtQtdeCabSaida: TEdit;
    Layout36: TLayout;
    Layout37: TLayout;
    Label35: TLabel;
    Label14: TLabel;
    edtPesoMed: TEdit;
    edtQtdCab: TEdit;
    LaytTrackClient: TLayout;
    gridAnimais: TStringGrid;
    recBackEnd: TRectangle;
    Rectangle17: TRectangle;
    lblUltDataColeta: TLabel;
    lblUltScore: TLabel;
    lblUltQtdeCab: TLabel;
    lblUltTaloxFolha: TLabel;
    Label5: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Layout10: TLayout;
    Layout38: TLayout;
    Label13: TLabel;
    Label21: TLabel;
    lblTotalAnimais: TLabel;
    lblPesoMedio: TLabel;
    layTrack: TLayout;
    TrackScore: TTMSFMXTrackBar;
    btnListaAnimal: TRectangle;
    Image14: TImage;
    Label15: TLabel;
    Layout26: TLayout;
    laygrid: TLayout;
    Rectangle19: TRectangle;
    btnAddAnimal: TRectangle;
    Image10: TImage;
    Label18: TLabel;
    btnSaidaAnimal: TRectangle;
    Image13: TImage;
    Label27: TLabel;
    Rectangle18: TRectangle;
    Label28: TLabel;
    Layout15: TLayout;
    Label20: TLabel;
    cbxTaloFolha: TComboBox;
    cbxCategoriaAtivos: TComboBox;
    edtDetTotalAnimalCat: TEdit;
    Label26: TLabel;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkFillControlToField3: TLinkFillControlToField;
    Rectangle20: TRectangle;
    Rectangle21: TRectangle;
    Layout13: TLayout;
    Label29: TLabel;
    Image15: TImage;
    procedure Image4Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure SwStatusSwitch(Sender: TObject);
    procedure btnSalvarGrupoClick(Sender: TObject);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnNovoFornClick(Sender: TObject);
    procedure btnExcluiItemClick(Sender: TObject);
    procedure ListaGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure ListaItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure edtRetiroFClick(Sender: TObject);
    procedure edtPastoFClick(Sender: TObject);
    procedure edtDataFChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbxRetiroChange(Sender: TObject);
    procedure btnLimpaFiltroClick(Sender: TObject);
    procedure cbxPastoChange(Sender: TObject);
    procedure cbxCategoriaChange(Sender: TObject);
    procedure Rectangle4Click(Sender: TObject);
    procedure imgFiltroListaClick(Sender: TObject);
    procedure Layout1Click(Sender: TObject);
    procedure btnAddAnimalClick(Sender: TObject);
    procedure btnConfirmaEntradaClick(Sender: TObject);
    procedure btnSaidaAnimalClick(Sender: TObject);
    procedure btnConfirmaSaidaClick(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure btnListaAnimalClick(Sender: TObject);
    procedure cbxCategoriaAtivosChange(Sender: TObject);
    procedure Image15Click(Sender: TObject);
  private
    vStatusPasto,
     vIdPasto,vIdCategoria,
     vIdItem,vFlagSync,vIdRetiroF:string;
    procedure LimpaCampos;
    procedure Filtro;
    procedure BuscaDadosUltimaColeta(vIdPasto: string);
    procedure SomarColunasAnimais;
    procedure CarregaComboPasto(idRetiro:string);
  public
    { Public declarations }
  end;

var
  frmScorePasto: TfrmScorePasto;

implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.XLgXhdpiTb.fmx ANDROID}

uses UDmDB, UPrincipal;

procedure TfrmScorePasto.btnAddAnimalClick(Sender: TObject);
begin
 edtPesoMed.Text            :='';
 cbxCategoria.ItemIndex     :=-1;
 edtQtdCab.Text             :='';
 lblLayAnimais.Text         := 'Entrada de Animais';
 tbAnimais.TabPosition      := TTabPosition.None;
 tbAnimais.ActiveTab        := tbiEntradas;
 recBackEnd.Visible         := true;
 laydetanimaispasto.Visible := true;
end;

procedure TfrmScorePasto.btnBuscarClick(Sender: TObject);
begin
 btnExcluiItem.Visible := false;
 Filtro;
end;

procedure TfrmScorePasto.btnConfirmaEntradaClick(Sender: TObject);
begin
 if edtQtdCab.Text.Length=0 then
 begin
   ShowMessage('Informe a Qtde. Cab. do Pasto!!');
   Exit;
 end;
 if cbxCategoria.ItemIndex=-1 then
 begin
   ShowMessage('Informe a Categoria dos Animais!!');
   Exit;
 end;
 if (edtPesoMed.Text.Length=0)or(edtPesoMed.Text='0') then
 begin
   ShowMessage('Informe o Peso M�dio dos Animais!!');
   Exit;
 end;
 dmdb.TDetAnimalPasto.Insert;
 dmdb.TDetAnimalPastoid.AsInteger           := dmdb.RetornaIdDetAnimalInsert;
 dmdb.TDetAnimalPastoidusuario.AsString     := dmdb.vIdUser;
 dmdb.TDetAnimalPastoidpasto.AsString       := vIdPasto;
 dmdb.TDetAnimalPastoidcategoria.AsString   := vIDCategoria;
 dmdb.TDetAnimalPastoqtdanimais.AsString    := edtQtdCab.Text;
 dmdb.TDetAnimalPastopesomedio.AsString     := edtPesoMed.Text;
 dmdb.TDetAnimalPastodataentrada.AsDateTime := edtDataEnt.DateTime;
 dmdb.TDetAnimalPastosync.AsInteger         := 0;
 dmdb.TDetAnimalPastotipo.AsInteger         := 1;
 try
  dmdb.TDetAnimalPasto.ApplyUpdates(-1);
  ShowMessage('Entrada Realizada com Sucesso!!');
  dmdb.AbreDetAnimalPasto(vIdPasto);
  dmDB.AbrirDadosPasto(vIdPasto);
  lblTotalAnimais.Text   := dmdb.TDadosPastoqtdeanimais.AsString;
  lblPesoMedio.Text      := FormatFloat('####,##0.00',dmdb.TDadosPastopesomedio.AsFloat);
  //  SomarColunasAnimais;
  laydetanimaispasto.Visible :=false;
  recBackEnd.Visible         := false;
  laygrid.Visible            := false;
  layTrack.Visible           := true;
 except
  on E : Exception do
   ShowMessage('Erro ao realizar entrada : '+E.Message);
 end;
end;

procedure TfrmScorePasto.btnConfirmaSaidaClick(Sender: TObject);
begin
 if cbxCategoriaAtivos.ItemIndex=-1 then
 begin
   ShowMessage('Informe a Categoria com animais ativos!!');
   Exit;
 end;
 if edtDetTotalAnimalCat.Text.Length=0 then
 begin
   ShowMessage('Categoria sem animais ativos!!');
   Exit;
 end;
 if strToInt(edtDetTotalAnimalCat.Text)<strToInt(edtQtdeCabSaida.Text) then
 begin
   ShowMessage('Quantidade de cabe�a maior que a quantidade de animais ativos!!');
   Exit;
 end;

 dmdb.TDetAnimalPasto.Insert;
 dmdb.TDetAnimalPastoid.AsInteger                 := dmdb.RetornaIdDetAnimalInsert;
 dmdb.TDetAnimalPastoidusuario.AsString           := dmdb.vIdUser;
 dmdb.TDetAnimalPastodatasaida.AsDateTime         := edtDataSaida.DateTime;
 dmdb.TDetAnimalPastoqtdanimais.AsInteger         := StrToInt(edtQtdeCabSaida.Text)*-1;
 dmdb.TDetAnimalPastoidpasto.AsString             := vIdPasto;
 dmdb.TDetAnimalPastoidcategoria.AsString         := vIDCategoria;
 dmdb.TDetAnimalPastopesomedio.AsString           := edtPesoMed.Text;

 dmdb.TDetAnimalPastosync.AsInteger               := 0;
 dmdb.TDetAnimalPastotipo.AsInteger               := 2;

 try
  dmdb.TDetAnimalPasto.ApplyUpdates(-1);
  dmdb.AbreDetAnimalPasto(vIdPasto);
//  SomarColunasAnimais;
  ShowMessage('Sa�da Realizada com Sucesso!!');
  dmDB.AbrirDadosPasto(vIdPasto);
  lblTotalAnimais.Text   := dmdb.TDadosPastoqtdeanimais.AsString;
  lblPesoMedio.Text      := FormatFloat('####,##0.00',dmdb.TDadosPastopesomedio.AsFloat);
  dmdb.TDetAnimalPasto.Close;
  dmdb.TDetAnimalPasto.Open;
  laydetanimaispasto.Visible :=false;
  recBackEnd.Visible         := false;
  laygrid.Visible            := false;
  layTrack.Visible           := true;
 except
  on E : Exception do
   ShowMessage('Erro ao realizar entrada : '+E.Message);
 end;
end;

procedure TfrmScorePasto.btnExcluiItemClick(Sender: TObject);
begin
 btnExcluiItem.Visible := false;
 if vFlagSync='0' then
 begin
   MessageDlg('Deseja Realmente Deletar esse Registro?', System.UITypes.TMsgDlgType.mtInformation,
   [System.UITypes.TMsgDlgBtn.mbYes,
   System.UITypes.TMsgDlgBtn.mbNo
   ], 0,
   procedure(const AResult: System.UITypes.TModalResult)
   begin
    case AResult of
     mrYES:
     begin
       dmdb.DeletaScorePasto(vIdItem);
       filtro;
     end;
     mrNo:
    end;
   end);
 end
 else
 begin
   ShowMessage('Registro ja Sincronizado!!');
 end;
end;

procedure TfrmScorePasto.SomarColunasAnimais;
var
  Sum : Double;
  Val : Double;
  Sum1 : Double;
  Val1 : Double;
  I   : Integer;
begin
  Sum  := 0;
  Val  := 0;
  Sum1 := 0;
  Val1 := 0;
  I   := 0;
  for I := 0 to gridAnimais.RowCount-1 do
  begin
   if TryStrToFloat(gridAnimais.Cells[1,I],Val) then
    Sum := Sum + Val;
   if TryStrToFloat(gridAnimais.Cells[2,I],Val1) then
    Sum1 := Sum1 + Val1;
  end;
  if I>0 then
  begin
    lblTotalAnimais.Text      := FloatToStr(Sum);
    lblPesoMedio.Text         := FormatFloat('####,##0.00',(Sum1/gridAnimais.RowCount));
  end
  else
  begin
    lblTotalAnimais.Text         := '0';
    lblTotalAnimais.Text         := '0';
  end;
end;

procedure TfrmScorePasto.btnLimpaFiltroClick(Sender: TObject);
begin
 cbxRetiro.ItemIndex:=-1;
 laymnuF.Visible  := false;
 SwStatus.Visible     := false;
 lblStatus.Visible     := false;
 img_seta.Visible      := true;
 layDadosGeral.Visible := false;
end;

procedure TfrmScorePasto.btnListaAnimalClick(Sender: TObject);
begin
 if laygrid.Visible then
 begin
   laygrid.Visible  := false;
   layTrack.Visible := true;
 end
 else
 begin
   laygrid.Visible  := true;
   layTrack.Visible := false;
 end;
end;

procedure TfrmScorePasto.btnNovoFornClick(Sender: TObject);
begin
 laygrid.Visible  := false;
 layTrack.Visible := true;
 img_seta.Position.Y := 0;
 img_seta.Opacity := 0;
 img_seta.AnimateFloatDelay('Position.Y', 50, 0.5, 1, TAnimationType.Out, TInterpolationType.Back);
 img_seta.AnimateFloatDelay('Opacity', 1, 0.4, 0.9);

 SwStatus.Visible      := false;
 lblStatus.Visible     := false;
 img_seta.Visible      := true;
 layDadosGeral.Visible := false;
 btnExcluiItem.Visible := false;
 LimpaCampos;
 tbPrincipal.ActiveTab := tbiCad;
 CarregaComboPasto('0');
end;

procedure TfrmScorePasto.btnSaidaAnimalClick(Sender: TObject);
begin
 laydetanimaispasto.Visible:= true;
 recBackEnd.Visible        := true;
 edtQtdeCabSaida.Text      := '';
 lblLayAnimais.Text        := 'Sa�da de Animais';
 tbAnimais.TabPosition     := TTabPosition.None;
 tbAnimais.ActiveTab       := tbiSaidas;
end;

procedure TfrmScorePasto.btnSalvarGrupoClick(Sender: TObject);
begin
 if cbxPasto.ItemIndex=-1 then
  begin
    ShowMessage('Informe o  Pasto!!');
    Exit;
  end;
  if edtQtdCab.Text.Length=0 then
  begin
    ShowMessage('Informe a Qtde. Cabe�a!!');
    Exit;
  end;
  if (strToInt(edtQtdCab.Text)>0) and (cbxCategoria.ItemIndex=-1) then
  begin
   ShowMessage('Informe a Categoria dos Animais!!');
   Exit;
  end;
  if (strToInt(edtQtdCab.Text)>0) and ((edtPesoMed.Text.Length=0)or(edtPesoMed.Text='0')) then
  begin
   ShowMessage('Informe o Peso Medio dos Animais!!');
   Exit;
  end;
  if (strToInt(edtQtdCab.Text)>0) and (not SwStatus.IsChecked) then
  begin
   ShowMessage('Pasto n�o podes estar inativo com animais!!');
   Exit;
  end;
  if cbxTaloFolha.ItemIndex=-1 then
  begin
    ShowMessage('Selecione o Talh�o x Folha!!');
    Exit;
  end;
   MessageDlg('Confirma Score:'+FloatToStr(TrackScore.Value)+#13+
   'Para o Pasto: '+cbxPasto.Selected.Text+#13+
   'Total de Animais: '+lblTotalAnimais.Text+#13+
   'Peso M�dio:'+lblPesoMedio.Text+'?',System.UITypes.TMsgDlgType.mtInformation,
   [System.UITypes.TMsgDlgBtn.mbYes,
   System.UITypes.TMsgDlgBtn.mbNo
   ], 0,
   procedure(const AResult: System.UITypes.TModalResult)
   begin
    case AResult of
     mrYES:
     begin
       dmDB.RetornaQtdCabPesoMedio(vidPasto);
       dmdb.TScoreTableidusuario.AsString             := dmdb.vIdUser;
       dmdb.TScoreTableidpasto.AsString               := vIdPasto;
       dmdb.TScoreTabledatacoleta.AsDateTime          := date;
       dmdb.TScoreTableqtdcabeca.AsString             := dmDB.vQtdCabeca;
       if cbxCategoria.ItemIndex>-1 then
        dmdb.TScoreTableidcategoria.AsString          := vIdCategoria;
       if edtPesoMed.Text.Length>0 then
        dmdb.TScoreTablepesomedio.AsString            := dmDB.vPesoMedio;
       dmdb.TScoreTabletaloxfolha.AsInteger           := cbxTaloFolha.ItemIndex;
       dmdb.TScoreTablescore.AsFloat                  := TrackScore.Value;
       dmdb.TScoreTablestatuspasto.AsString           := vStatusPasto;
       if SwStatus.IsChecked then
        dmdb.TScoreTablestatuspasto.AsInteger         := 1
       else
        dmdb.TScoreTablestatuspasto.AsInteger         := 0;
       dmdb.TScoreTableidcliente.AsString             := dmdb.vIdCliente;
       try
        dmdb.TScoreTable.post;
        Filtro;
        ShowMessage('Registro realizado com sucesso!');
        tbPrincipal.ActiveTab := tbiLista;
       except
       on E : Exception do
         ShowMessage('Erro ao inserir Pasto:'+e.Message);
       end;
     end;
     mrNo:
    end;
   end);
end;

procedure TfrmScorePasto.Button1Click(Sender: TObject);
begin
  btnExcluiItem.Visible := false;
  filtro;
end;

procedure TfrmScorePasto.CarregaComboPasto(idRetiro: string);
begin
  cbxPasto.Items.Clear;
  dmDB.FiltraPaso(idRetiro);
  dmDB.TPasto.First;
  while not dmDB.TPasto.eof do
  begin
    cbxPasto.Items.Add(dmDB.TPastonome.AsString);
    dmDB.TPasto.Next;
  end;
  cbxPasto.ItemIndex :=-1;
end;

procedure TfrmScorePasto.cbxCategoriaAtivosChange(Sender: TObject);
begin
 if cbxCategoriaAtivos.ItemIndex>-1 then
 begin
   vIdCategoria:=LinkFillControlToField2.BindList.GetSelectedValue.AsString;
   edtDetTotalAnimalCat.Text    := intToStr(
   dmdb.RetornaQtdAnimaisCategoria(vidCategoria,vidPasto));
 end;
end;

procedure TfrmScorePasto.cbxCategoriaChange(Sender: TObject);
begin
 vIdCategoria:=LinkFillControlToField1.BindList.GetSelectedValue.AsString;
end;

procedure TfrmScorePasto.cbxPastoChange(Sender: TObject);
begin
 if cbxPasto.ItemIndex>-1 then
 begin
  vIdPasto := dmDB.RetornaIdPasto(cbxPasto.Selected.Text);
  dmDB.AbreDetAnimalPasto(vIdPasto);
  dmdb.AbreScoreTable(date,vIdPasto);
  if not dmdb.TScoreTable.IsEmpty then
  begin
   MessageDlg('Pasto ja tem Score lan�ado para esse dia, deseja atualizar?', System.UITypes.TMsgDlgType.mtInformation,
   [System.UITypes.TMsgDlgBtn.mbYes,
   System.UITypes.TMsgDlgBtn.mbNo
   ], 0,
   procedure(const AResult: System.UITypes.TModalResult)
   begin
    case AResult of
     mrYES:
     begin
       dmdb.TScoreTable.Edit;
       dmdb.TScoreTablesync.AsInteger :=0;
       TrackScore.Value := dmdb.TScoreTablescore.AsFloat;
     end;
     mrNo:
     begin
      cbxPasto.ItemIndex :=-1;
      layDadosGeral.Visible :=false;
      Exit;
     end;
    end;
   end);
  end
  else
   dmdb.TScoreTable.Insert;
  SwStatus.Visible      := true;
  lblStatus.Visible     := true;
  img_seta.Visible      := false;
  layDadosGeral.Visible := true;

  dmDB.AbrirDadosPasto(vIdPasto);
  lblTotalAnimais.Text   := dmdb.TDadosPastoqtdeanimais.AsString;
  lblPesoMedio.Text      := FormatFloat('####,##0.00',dmdb.TDadosPastopesomedio.AsFloat);
  edtQtdCab.Text         := dmdb.TDadosPastoqtdeanimais.AsString;
  cbxCategoria.ItemIndex := cbxCategoria.Items.IndexOf(dmdb.TDadosPastocategoria.AsString);
  vIdCategoria           := dmdb.TDadosPastoidcategoria.AsString;
  edtPesoMed.Text        := dmdb.TDadosPastopesomedio.AsString;
  SwStatus.IsChecked     := dmdb.TDadosPastostatus.AsInteger=1;
  BuscaDadosUltimaColeta(vIdPasto);
 end
 else
 begin
  SwStatus.Visible      := false;
  lblStatus.Visible     := false;
  img_seta.Visible      := true;
  layDadosGeral.Visible := false;
 end;
end;

procedure TfrmScorePasto.BuscaDadosUltimaColeta(vIdPasto: string);
var
 vData:string;
begin
 dmdb.BuscaDadosUltimaColeta(vIdPasto);
 lblUltDataColeta.Text := dmdb.qryUltimaColetadatacoleta.Asstring;
 lblUltScore.Text      :=  dmdb.qryUltimaColetascore.AsString;
 lblUltQtdeCab.Text    :=  dmdb.qryUltimaColetaqtdcabeca.AsString;
 lblUltTaloxFolha.Text :=  dmdb.qryUltimaColetataloxfolhastr.AsString;
end;

procedure TfrmScorePasto.cbxRetiroChange(Sender: TObject);
begin
 cbxPasto.Items.Clear;
 if cbxRetiro.ItemIndex>-1 then
 begin
   vIdRetiroF := LinkFillControlToField3.BindList.GetSelectedValue.AsString;
   CarregaComboPasto(vIdRetiroF)
 end
 else
  CarregaComboPasto('0');
 SwStatus.Visible      := false;
 lblStatus.Visible     := false;
 img_seta.Visible      := true;
 layDadosGeral.Visible := false;
 laymnuF.Visible  := false;
end;

procedure TfrmScorePasto.edtDataFChange(Sender: TObject);
begin
 btnExcluiItem.Visible := false;
end;

procedure TfrmScorePasto.edtPastoFClick(Sender: TObject);
begin
 btnExcluiItem.Visible := false;
end;

procedure TfrmScorePasto.edtRetiroFClick(Sender: TObject);
begin
 btnExcluiItem.Visible := false;
end;

procedure TfrmScorePasto.Filtro;
var
 vFiltro,vDataDe: string;
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
begin
 vDataDe  := FormatDateTime('yyyy-mm-dd',edtDataF.Date).QuotedString;
 vFiltro  :='and s.datacoleta ='+vDataDe;
 if edtRetiroF.Text.Length>0 then
   vFiltro := vFiltro+ ' and r.nome like'+QuotedStr('%'+edtRetiroF.Text+'%');
 if edtPastoF.Text.Length>0 then
   vFiltro := vFiltro+ ' and p.nome like'+QuotedStr('%'+edtPastoF.Text+'%');
 dmdb.AbrirScorePasto(vFiltro);

 dmDB.TScorePasto.First;
 Lista.Items.Clear;
 while not dmDB.TScorePasto.eof do
 begin
   item := Lista.Items.Add;
   with frmScorePasto do
   begin
     with item  do
     begin
       txt           := TListItemText(Objects.FindDrawable('Text3'));
       txt.Text      := dmDB.TScorePastoPASTO.AsString;
       txt.TagString := dmDB.TScorePastoID.AsString;

       txt           := TListItemText(Objects.FindDrawable('Text5'));
       txt.Text      := 'Data: ';
       txt.TagString := dmDB.TScorePastoSync.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text4'));
       txt.Text := 'Score: ';

       txt      := TListItemText(Objects.FindDrawable('Text8'));
       txt.Text := 'Pasto: ';

       txt      := TListItemText(Objects.FindDrawable('Text6'));
       txt.Text := FormatDateTime('dd/mm/yyyy',dmDB.TScorePastodatacoleta.AsDateTime);

       txt      := TListItemText(Objects.FindDrawable('Text7'));
       txt.Text := dmDB.TScorePastoSCORE.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text10'));
       txt.Text := 'Qtde. Cab: ';
       txt      := TListItemText(Objects.FindDrawable('Text9'));
       txt.Text := dmDB.TScorePastoqtdcabeca.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text14'));
       txt.Text := 'Peso Med.: ';
       txt      := TListItemText(Objects.FindDrawable('Text11'));
       txt.Text := FormatFloat('####,##.0.00',dmdb.TScorePastopesomedio.AsFloat);


       img := TListItemImage(Objects.FindDrawable('Image14'));
       img.Bitmap     := frmPrincipal.ImgScore.Bitmap;

       img := TListItemImage(Objects.FindDrawable('Image13'));
       img.Bitmap     := frmPrincipal.imgListaPreto.Bitmap;
     end;
     dmDB.TScorePasto.Next;
   end;
 end;
end;

procedure TfrmScorePasto.FormShow(Sender: TObject);
begin
 layTrack.Height            :=LaytTrackClient.Height;
 TrackScore.Height          :=LaytTrackClient.Height;
 laymnuF.Visible            := false;
 frmScorePasto.StyleBook    := frmPrincipal.StyleBook1;
 recBackEnd.Visible         := false;
 laydetanimaispasto.Visible := false;
 dmDB.TRetiro.Close;
 dmDB.TRetiro.Open;
 dmDB.TAuxCategoria.Close;
 dmDB.TAuxCategoria.Open;
 laymsg.Visible := false;
 tbPrincipal.ActiveTab   :=  tbiLista;
 tbPrincipal.TabPosition :=  TTabPosition.None;
 edtDataF.Date           :=  date ;
 btnExcluiItem.Visible   :=  false;
 Filtro;
end;

procedure TfrmScorePasto.Image15Click(Sender: TObject);
begin
 laygrid.Visible := false;
end;

procedure TfrmScorePasto.Image2Click(Sender: TObject);
begin
 if laymnuF.Visible then
  laymnuF.Visible  := false
 else
  laymnuF.Visible  := true;
end;

procedure TfrmScorePasto.Image4Click(Sender: TObject);
begin
  btnExcluiItem.Visible := false;
  Close;
end;

procedure TfrmScorePasto.Image7Click(Sender: TObject);
begin
 recBackEnd.Visible         := false;
 laydetanimaispasto.Visible := false;
end;

procedure TfrmScorePasto.imgFiltroListaClick(Sender: TObject);
begin
 if recFiltros.Visible then
  recFiltros.Visible  := false
 else
  recFiltros.Visible  := true;
end;

procedure TfrmScorePasto.Layout1Click(Sender: TObject);
begin
 btnExcluiItem.Visible := false;
end;

procedure TfrmScorePasto.LimpaCampos;
begin
 cbxpasto.ItemIndex       :=-1;
 lblUltQtdeCab.Text       :='';
 lblUltScore.Text         :='';
 lblUltScore.Text         :='';
 lblUltTaloxFolha.Text    :='';
 edtQtdCab.Text           :='';
 cbxCategoria.ItemIndex   :=-1;
 edtPesoMed.Text          :='';
 cbxTaloFolha.ItemIndex   :=-1;
 TrackScore.Value         :=0;
 lblUltDataColeta.Text    :='';
end;

procedure TfrmScorePasto.ListaGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
   if btnExcluiItem.Visible=true then
    btnExcluiItem.Visible := false
   else
    btnExcluiItem.Visible := true;
end;

procedure TfrmScorePasto.ListaItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
 vIdItem :=
   TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text3').TagString;
 vFlagSync :=
   TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text5').TagString;
end;

procedure TfrmScorePasto.Rectangle4Click(Sender: TObject);
begin
 tbPrincipal.ActiveTab := tbiLista;
end;

procedure TfrmScorePasto.SearchEditButton1Click(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmScorePasto.SearchEditButton2Click(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmScorePasto.SwStatusSwitch(Sender: TObject);
begin
 if SwStatus.IsChecked then
 begin
   vStatusPasto                  :='1';
   lblsws.TextSettings.HorzAlign := TTextAlign.Leading;
   lblsws.Text                   := 'Ativo';
 end
 else
 begin
   vStatusPasto                  :='0';
   lblsws.TextSettings.HorzAlign := TTextAlign.Trailing;
   lblsws.Text                   := 'Inativo';
 end;
end;

end.

