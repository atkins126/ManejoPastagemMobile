unit UDmDB;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, Data.DB,
  FireDAC.Comp.Client,FMX.Dialogs,FMX.Forms,System.UITypes,FireDAC.DApt,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  System.IOUtils, FireDAC.Phys.SQLiteWrapper.Stat;


type
  TdmDB = class(TDataModule)
    FCon: TFDConnection;
    vQry: TFDQuery;
    TUsuario: TFDQuery;
    TAuxCategoria: TFDQuery;
    TAuxCapim: TFDQuery;
    TRetiro: TFDQuery;
    TPasto: TFDQuery;
    TScorePasto: TFDQuery;
    SQLiteDriverLink: TFDPhysSQLiteDriverLink;
    TUsuarioid: TIntegerField;
    TUsuarionome: TStringField;
    TUsuarioemail: TStringField;
    TUsuariotelefone: TStringField;
    TUsuariotipo: TWideStringField;
    TUsuariousuario: TStringField;
    TUsuariosenha: TStringField;
    TUsuariodataregistro: TSQLTimeStampField;
    TUsuariostatus: TWideStringField;
    TUsuarioidcliente: TWideStringField;
    TUsuariotipostr: TWideStringField;
    TRetiroid: TIntegerField;
    TRetirostatus: TWideStringField;
    TRetirodatareg: TWideStringField;
    TRetiroidusuario: TWideStringField;
    TRetirodataalteracao: TWideStringField;
    TRetiroidusuarioalteracao: TWideStringField;
    TRetiroidcliente: TWideStringField;
    TRetironome: TStringField;
    TRetirolatitude: TStringField;
    TRetirolongitude: TStringField;
    TRetiroareahectare: TBCDField;
    TPastoid: TIntegerField;
    TPastostatus: TWideStringField;
    TPastodatareg: TWideStringField;
    TPastoidusuario: TWideStringField;
    TPastodataalteracao: TWideStringField;
    TPastoidusuarioalteracao: TWideStringField;
    TPastoidretiro: TWideStringField;
    TPastonome: TStringField;
    TPastolatitude: TStringField;
    TPastolongitude: TStringField;
    TPastoareahectare: TBCDField;
    TPastoqtdeanimais: TWideStringField;
    TPastopesomedio: TBCDField;
    TPastoidcategoria: TWideStringField;
    TPastoidcapim: TWideStringField;
    TPastoidcliente: TWideStringField;
    TPastoRetiro: TStringField;
    TPastoCapim: TStringField;
    TPastoStatusStr: TWideStringField;
    TScorePastoid: TFDAutoIncField;
    TScorePastostatus: TWideStringField;
    TScorePastodatareg: TWideStringField;
    TScorePastoidusuario: TWideStringField;
    TScorePastodataalteracao: TWideStringField;
    TScorePastoidusuarioalteracao: TWideStringField;
    TScorePastoidcliente: TWideStringField;
    TScorePastoidpasto: TWideStringField;
    TScorePastostatuspasto: TWideStringField;
    TScorePastoscore: TBCDField;
    TScorePastotaloxfolha: TWideStringField;
    TScorePastoqtdcabeca: TWideStringField;
    TScorePastoidcategoria: TWideStringField;
    TScorePastopesomedio: TBCDField;
    TScorePastodatacoleta: TDateField;
    TScorePastohoracoleta: TTimeField;
    TScorePastosync: TIntegerField;
    TScorePastoPasto: TStringField;
    TScorePastoCapim: TStringField;
    TScorePastocategoria: TStringField;
    TScorePastoStatusStr: TWideStringField;
    TScorePastotaloxfolhaStr: TWideStringField;
    TScorePastoRetiro: TStringField;
    TAuxCategoriaid: TIntegerField;
    TAuxCategoriastatus: TWideStringField;
    TAuxCategoriadatareg: TWideStringField;
    TAuxCategoriaidusuario: TWideStringField;
    TAuxCategoriadataalteracao: TWideStringField;
    TAuxCategoriaidusuarioalteracao: TWideStringField;
    TAuxCategorianome: TStringField;
    TAuxCategoriaidcliente: TWideStringField;
    TAuxCategoriasexo: TWideStringField;
    TAuxCapimid: TIntegerField;
    TAuxCapimstatus: TWideStringField;
    TAuxCapimdatareg: TWideStringField;
    TAuxCapimidusuario: TWideStringField;
    TAuxCapimdataalteracao: TWideStringField;
    TAuxCapimidusuarioalteracao: TWideStringField;
    TAuxCapimnome: TStringField;
    TAuxCapimidcliente: TWideStringField;
    qryConfig: TFDQuery;
    qryConfigIP_SERVIDOR: TWideStringField;
    qryConfigPOTA_SERVIDOR: TIntegerField;
    qryConfigSERIAL: TWideStringField;
    qryConfigSalvarLogin: TIntegerField;
    qryUltimaColeta: TFDQuery;
    qryUltimaColetaid: TFDAutoIncField;
    qryUltimaColetastatus: TWideStringField;
    qryUltimaColetadatareg: TWideStringField;
    qryUltimaColetaidusuario: TWideStringField;
    qryUltimaColetadataalteracao: TWideStringField;
    qryUltimaColetaidusuarioalteracao: TWideStringField;
    qryUltimaColetaidcliente: TWideStringField;
    qryUltimaColetaidpasto: TWideStringField;
    qryUltimaColetastatuspasto: TWideStringField;
    qryUltimaColetascore: TBCDField;
    qryUltimaColetataloxfolha: TWideStringField;
    qryUltimaColetaqtdcabeca: TWideStringField;
    qryUltimaColetaidcategoria: TWideStringField;
    qryUltimaColetapesomedio: TBCDField;
    qryUltimaColetadatacoleta: TDateField;
    qryUltimaColetahoracoleta: TTimeField;
    qryUltimaColetaPasto: TStringField;
    qryUltimaColetaCapim: TStringField;
    qryUltimaColetacategoria: TStringField;
    qryUltimaColetaStatusStr: TWideStringField;
    qryUltimaColetataloxfolhaStr: TWideStringField;
    TDadosPasto: TFDQuery;
    TDadosPastoid: TIntegerField;
    TDadosPastostatus: TWideStringField;
    TDadosPastodatareg: TWideStringField;
    TDadosPastoidusuario: TWideStringField;
    TDadosPastodataalteracao: TWideStringField;
    TDadosPastoidusuarioalteracao: TWideStringField;
    TDadosPastoidretiro: TWideStringField;
    TDadosPastonome: TStringField;
    TDadosPastolatitude: TStringField;
    TDadosPastolongitude: TStringField;
    TDadosPastoareahectare: TBCDField;
    TDadosPastoqtdeanimais: TWideStringField;
    TDadosPastopesomedio: TBCDField;
    TDadosPastoidcategoria: TWideStringField;
    TDadosPastoidcapim: TWideStringField;
    TDadosPastoidcliente: TWideStringField;
    TDadosPastoRetiro: TStringField;
    TDadosPastoCapim: TStringField;
    TDadosPastoCategoria: TStringField;
    TDadosPastoStatusStr: TWideStringField;
    TDetAnimalPasto: TFDQuery;
    TDetAnimalPastoid: TIntegerField;
    TDetAnimalPastostatus: TWideStringField;
    TDetAnimalPastodatareg: TWideStringField;
    TDetAnimalPastoidusuario: TWideStringField;
    TDetAnimalPastodataalteracao: TWideStringField;
    TDetAnimalPastoidusuarioalteracao: TWideStringField;
    TDetAnimalPastoidpasto: TWideStringField;
    TDetAnimalPastoidcategoria: TWideStringField;
    TDetAnimalPastoqtdanimais: TWideStringField;
    TDetAnimalPastopesomedio: TBCDField;
    TDetAnimalPastodataentrada: TDateField;
    TDetAnimalPastodatasaida: TDateField;
    TDetAnimalPastosync: TIntegerField;
    TDetAnimalPastotipo: TIntegerField;
    TDetAnimalPastocategoria: TStringField;
    TDetAnimalPastodataOp: TWideStringField;
    TDetAnimalPastotipoStr: TWideStringField;
    TScoreTable: TFDQuery;
    TScoreTableid: TFDAutoIncField;
    TScoreTablestatus: TWideStringField;
    TScoreTabledatareg: TWideStringField;
    TScoreTableidusuario: TWideStringField;
    TScoreTabledataalteracao: TWideStringField;
    TScoreTableidusuarioalteracao: TWideStringField;
    TScoreTableidcliente: TWideStringField;
    TScoreTableidpasto: TWideStringField;
    TScoreTablestatuspasto: TWideStringField;
    TScoreTablescore: TBCDField;
    TScoreTabletaloxfolha: TWideStringField;
    TScoreTableqtdcabeca: TWideStringField;
    TScoreTableidcategoria: TWideStringField;
    TScoreTablepesomedio: TBCDField;
    TScoreTabledatacoleta: TDateField;
    TScoreTablehoracoleta: TTimeField;
    TScoreTablesync: TIntegerField;
    procedure FConBeforeConnect(Sender: TObject);
    procedure TDetAnimalPastoReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure qryConfigReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
  private
    { Private declarations }
  public
    vIdUser,vIdCliente,vPesoMedio,vQtdCabeca:string;
    vPrimeiroAcesso:Boolean;
    function  VerificaTabelaVazia(AnomeTable: string): Boolean;
    function  AutenticaUsuario(Usuario, Senha: string): Boolean;
    procedure AbrirScorePasto(vFiltro: string);
    procedure DeletaScorePasto(Id: string);
    procedure BuscaDadosUltimaColeta(idPasto:string);
    procedure FiltraPaso(idRetiro:string);
    procedure AlteraFlagSync(Tabela,Ids,Status:string);
    procedure AlteraFlagSyncDetAnimalEntrada(IdOld,idNew,Status: string);
    procedure AbrirDadosPasto(vId: string);
    procedure CreateTablesVersao(NumeroVersao: string);
    function  VerificaCampoExiste(Acampo, Atabela: string):Boolean;
    function  VerificaTabelaExiste(Atabela: string): Boolean;
    procedure AbreDetAnimalPasto(idPasto:string);
    procedure RetornaQtdCabPesoMedio(idPasto:string);
    function  RetornaIdDetAnimalInsert:integer;
    procedure AbreScoreTable(dataBase: Tdate; idPasto: string);
    function  RetornaQtdAnimaisCategoria(idCategoria,idPasto: string): integer;
    function  RetornaIdPasto(NomePasto:string):string;
    procedure AtualizaConfig(ipServ,PortaServ:string);
  end;

var
  dmDB: TdmDB;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TdmDB.FConBeforeConnect(Sender: TObject);
var
 vPath:string;
begin
 {$IF DEFINED(iOS) or DEFINED(ANDROID)}
   FCon.Params.DriverID :='SQLite';
   FCon.Params.Values['Database'] :=
   TPath.Combine(TPath.GetDocumentsPath,'db1.db');
 {$ENDIF}
 {$IFDEF MSWINDOWS}
   vPath := 'E:\20102021\Projetos2021\Pecuarizze\ManejoPastagem\Mobile\db\dbw.db';
   if FileExists(vPath) then
   begin
    FCon.Params.DriverID :='SQLite';
    FCon.Params.Values['Database'] :=vPath;
   end
   else
    ShowMessage('BD Não localizado!!');
 {$ENDIF}
end;

procedure TdmDB.FiltraPaso(idRetiro: string);
begin
 with TPasto,TPasto.SQL do
 begin
   Clear;
   Add('select');
   Add(' p.*,');
   Add(' r.nome Retiro,');
   Add('a.nome Capim,');
   Add(' c.nome Categoria,');
   Add(' CASE');
   Add('  when p.status=0 then ''INATIVO''');
   Add('  when p.status=1 then ''ATIVO''');
   Add(' END StatusStr');
   Add('from pasto p');
   Add('join retiro r  on p.idretiro=r.id');
   Add('left join auxcapim a on a.id=p.idcapim');
   Add('left join auxcategoria c ON c.id=p.idcategoria');
   Add('where p.status>-1');
   if idRetiro<>'0' then
    Add('and r.id='+idRetiro);
   Open;
 end;
end;

procedure TdmDB.qryConfigReconcileError(DataSet: TFDDataSet; E: EFDException;
  UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message)
end;

function TdmDB.VerificaTabelaVazia(AnomeTable: string): Boolean;
var
 qryAux : TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection := FCon;
 with qryAux,qryAux.sql do
 begin
   Clear;
   Add('select * from '+AnomeTable);
   try
    Open;
   except
    on E: Exception do
     ShowMessage('Erro:' + E.Message );
   end;
   if AnomeTable='usuario' then
    vPrimeiroAcesso := qryAux.IsEmpty;
   Result := qryAux.IsEmpty;
 end;
 qryAux.free;
end;

procedure TdmDB.AlteraFlagSync(Tabela, Ids,Status: string);
var
 qryAux : TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection := FCon;
 with qryAux,qryAux.sql do
 begin
  Clear;
  Add('UPDATE '+Tabela+' SET SYNC='+Status);
  Add('WHERE id in('+Ids+')');
  ExecSQL;
 end;
 qryAux.Free;
end;

procedure TdmDB.AlteraFlagSyncDetAnimalEntrada(IdOld,idNew,Status: string);
var
 qryAux : TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection := FCon;
 with qryAux,qryAux.sql do
 begin
  Clear;
  Add('UPDATE detanimaispasto SET id='+idNew+',SYNC='+Status);
  Add('WHERE id='+IdOld);
  ExecSQL;
 end;
 qryAux.Free;
end;

procedure TdmDB.AtualizaConfig(ipServ, PortaServ: string);
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('update CONFIG set IP_SERVIDOR='+ipServ.QuotedString);
   Add(',POTA_SERVIDOR='+PortaServ);
   ExecSQL;
 end;
end;

procedure Tdmdb.AbreScoreTable(dataBase: Tdate; idPasto: string);
begin
 with TScoreTable,TScoreTable.SQL do
 begin
   Clear;
   Add('select * from scorepasto s');
   Add('where s.status >-1');
   Add('and idPasto='+idpasto);
   Add('and datacoleta='+FormatDateTime('yyyy-mm-dd',dataBase).QuotedString );
   TScoreTable.SQL.Text;
   Open;
 end;
end;

function TdmDB.AutenticaUsuario(Usuario, Senha: string): Boolean;
var
 qryAux : TFDQuery;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection := FCon;
 with qryAux,qryAux.sql do
 begin
  Clear;
  Add('SELECT * FROM usuario');
  Add('WHERE usuario='+Usuario.QuotedString);
  Add('AND senha='+Senha.QuotedString);
  Open;
  if not qryAux.IsEmpty then
   begin
    vIdUser          := qryAux.FieldByName('id').AsString;
    vIdCliente       := qryAux.FieldByName('idcliente').AsString;
    Result := true
   end
   else
    Result := false;
   end;
   qryAux.Free;
end;

procedure TdmDB.BuscaDadosUltimaColeta(idPasto: string);
begin
 with qryUltimaColeta,qryUltimaColeta.SQL do
 begin
   Clear;
   Add('select');
   Add('s.*,');
   Add('p.nome Pasto,');
   Add('c.nome Capim,');
   Add('ca.nome categoria,');
   Add('CASE');
   Add(' when s.statuspasto =0 then ''INATIVO''');
   Add(' when s.statuspasto =1 then ''ATIVO''');
   Add('END StatusStr,');
   Add('CASE');
   Add(' when s.taloxfolha  =0 then ''TALO''');
   Add(' when s.taloxfolha  =1 then ''FOLHA''');
   Add('END taloxfolhaStr');
   Add('from hitscorepasto s');
   Add('join pasto p  on s.idpasto=p.id');
   Add('join auxcapim c on c.id=p.idcapim');
   Add('left join auxcategoria ca on ca.id=s.idcategoria');
   Add('where s.status=1');
   Add('and p.id='+idPasto);
   Add('and datacoleta<>current_date');
   Add('order by s.datacoleta desc');
   Add('limit 1');
   Open;
 end;
end;

function Tdmdb.RetornaQtdAnimaisCategoria(idCategoria,
  idPasto: string): integer;
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select coalesce(sum(qtdanimais),0) qtd from detanimaispasto d');
   Add('where status=1 and d.idpasto='+idpasto+' and idcategoria='+idcategoria);
   Open;
   Result := FieldByName('qtd').AsInteger;
 end;
end;

procedure TdmDB.AbreDetAnimalPasto(idPasto: string);
begin
 with TDetAnimalPasto,TDetAnimalPasto.SQL do
 begin
   Clear;
   Add('select');
   Add(' d.*,a.nome categoria,');
   Add(' coalesce(d.dataentrada,d.datasaida)dataOp,');
   Add('case');
   Add(' when tipo=1 then ''ENTRADA''');
   Add(' when tipo=2 then ''SAIDA''');
   Add('end tipoStr');
   Add('from detanimaispasto d');
   Add('join auxcategoria a on a.id=d.idcategoria');
   Add('where d.status=1');
   Add('AND idpasto=:idpasto');
   ParamByName('idpasto').AsString := idPasto;
   Open;
 end;
end;

function TdmDB.RetornaIdDetAnimalInsert: integer;
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select max(id) max_id from detanimaispasto a');
   Add('WHERE a.status>-1 and sync=0');
   Open;
   if FieldByName('max_id').AsString.Length>0 then
    Result := FieldByName('max_id').AsInteger +1
   else
   result  := 9000000;
 end;
end;

function TdmDB.RetornaIdPasto(NomePasto: string): string;
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from pasto where status=1 and nome='+NomePasto.QuotedString);
   Open;
   Result  := FieldByName('id').AsString;
 end;
end;

procedure TdmDB.RetornaQtdCabPesoMedio(idPasto: string);
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select avg(pesomedio)pesomedio,sum(qtdanimais)qtdanimais');
   Add('from detanimaispasto a');
   Add('where idpasto=:idpasto');
   Add('and a.status>-1 and qtdanimais>0');
   ParamByName('idpasto').AsString := idPasto;
   Open;
   vPesoMedio  := FieldByName('pesomedio').AsString;
   vQtdCabeca  := FieldByName('qtdanimais').AsString;
 end;
end;

procedure TdmDB.TDetAnimalPastoReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure TdmDB.AbrirDadosPasto(vId: string);
begin
 with TDadosPasto,TDadosPasto.SQL do
 begin
   Clear;
   Add('select');
   Add(' p.*,');
   Add(' r.nome Retiro,');
   Add(' a.nome Capim,');
   Add(' c.nome Categoria,');
   Add(' CASE');
   Add('  when p.status=0 then ''INATIVO''');
   Add('  when p.status=1 then ''ATIVO''');
   Add(' END StatusStr');
   Add('from pasto p');
   Add('join retiro r  on p.idretiro=r.id');
   Add('left join auxcapim a on a.id=p.idcapim');
   Add('left join auxcategoria c ON c.id=p.idcategoria');
   Add('where p.status>-1');
   Add('and p.id='+vId);
   Open;
 end;
end;

procedure Tdmdb.AbrirScorePasto(vFiltro: string);
begin
 with TScorePasto,TScorePasto.SQL do
 begin
   Clear;
   Add('select');
   Add(' s.*,');
   Add(' p.nome Pasto,');
   Add(' c.nome Capim,');
   Add(' ca.nome categoria,');
   Add(' CASE');
   Add('  when s.statuspasto =0 then ''INATIVO''');
   Add('  when s.statuspasto =1 then ''ATIVO''');
   Add(' END StatusStr,');
   Add(' CASE');
   Add('  when s.taloxfolha  =0 then ''TALO''');
   Add('  when s.taloxfolha  =1 then ''FOLHA''');
   Add(' END taloxfolhaStr,');
   Add(' r.nome Retiro');
   Add('from scorepasto s');
   Add('join pasto p  on s.idpasto=p.id');
   Add('join retiro r  on r.id=p.idretiro');
   Add('join auxcapim c on c.id=p.idcapim');
   Add('left join auxcategoria ca on ca.id=s.idcategoria');
   Add('where s.status=1');
   Add(vFiltro);
   Open;
 end;
end;

function Tdmdb.VerificaCampoExiste(Acampo, Atabela: string):Boolean;
var
 vQryAux:TFDQuery;
 vExiste:integer;
begin
 vExiste :=0;
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := FCon;
 vExiste:=0;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('PRAGMA table_info('+Atabela+')');
   Open;
   while not vQryAux.eof do
   begin
     if Acampo=vQryAux.FieldByName('name').AsString then
       vExiste:=1;
     vQryAux.Next;
   end;
 end;
 Result:=vExiste=1;
 vQryAux.Free;
end;

function Tdmdb.VerificaTabelaExiste(Atabela: string): Boolean;
var
 vQryAux:TFDQuery;
 vExiste:integer;
begin
 vExiste :=0;
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := FCon;
 vExiste:=0;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('PRAGMA table_info('+Atabela+')');
   Open;
   Result:=vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;


procedure Tdmdb.CreateTablesVersao(NumeroVersao: string);
var
 vQryAux:TFDQuery;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := FCon;
 if NumeroVersao='1.0.2' then
 begin
   if VerificaTabelaExiste('detanimaispasto') then
   begin
    with vQryAux,vQryAux.SQL do
    begin
     Clear;
     Add('CREATE TABLE detanimaispasto (');
     Add('	id integer NOT NULL,');
     Add('	status int4 NOT NULL DEFAULT 1,');
     Add('	datareg timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,');
     Add('	idusuario int4 NOT NULL,');
     Add('	dataalteracao timestamptz NULL,');
     Add('	idusuarioalteracao int4 NULL,');
     Add('	idpasto int4 NOT NULL,');
     Add('	idcategoria int4 NOT NULL,');
     Add('	qtdanimais int4 NOT NULL,');
     Add('	pesomedio numeric(15, 2) NOT NULL,');
     Add('	dataentrada date NOT NULL,');
     Add('	datasaida date NULL,');
     Add('	sync integer not null DEFAULT 0 )');
     ExecSQL;
    end;
   end;
 end;
 vQryAux.Free;
end;


procedure Tdmdb.DeletaScorePasto(Id: string);
var
 vQryAux :TFDQuery;
begin
 vQryAux := TFDQuery.Create(self);
 vQryAux.Connection := FCon;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('DELETE FROM SCOREPASTO WHERE ID=:ID');
   ParamByName('ID').AsString := ID;
   ExecSQL;
 end;
 vQryAux.Free;
end;
end.
