unit UDmSyncData;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet,System.IOUtils, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, FireDAC.Stan.StorageBin,
  System.JSON,IdHashMessageDigest,System.JSON.Writers,System.JSON.Types,Data.DBXPlatform,
  FireDAC.Stan.StorageJSON;

type
  TdmSync = class(TDataModule)
    TUsuario: TFDQuery;
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
    TAuxCategoria: TFDQuery;
    TAuxCategoriaid: TIntegerField;
    TAuxCategoriastatus: TWideStringField;
    TAuxCategoriadatareg: TWideStringField;
    TAuxCategoriaidusuario: TWideStringField;
    TAuxCategoriadataalteracao: TWideStringField;
    TAuxCategoriaidusuarioalteracao: TWideStringField;
    TAuxCategorianome: TStringField;
    TAuxCategoriaidcliente: TWideStringField;
    TAuxCategoriasexo: TWideStringField;
    TAuxCapim: TFDQuery;
    TAuxCapimid: TIntegerField;
    TAuxCapimstatus: TWideStringField;
    TAuxCapimdatareg: TWideStringField;
    TAuxCapimidusuario: TWideStringField;
    TAuxCapimdataalteracao: TWideStringField;
    TAuxCapimidusuarioalteracao: TWideStringField;
    TAuxCapimnome: TStringField;
    TAuxCapimidcliente: TWideStringField;
    TRetiro: TFDQuery;
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
    TPasto: TFDQuery;
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
    TScorePasto: TFDQuery;
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
    THitscorepasto: TFDQuery;
    THitscorepastoid: TIntegerField;
    THitscorepastostatus: TWideStringField;
    THitscorepastodatareg: TWideStringField;
    THitscorepastoidusuario: TWideStringField;
    THitscorepastodataalteracao: TWideStringField;
    THitscorepastoidusuarioalteracao: TWideStringField;
    THitscorepastoidcliente: TWideStringField;
    THitscorepastoidpasto: TWideStringField;
    THitscorepastostatuspasto: TWideStringField;
    THitscorepastoscore: TBCDField;
    THitscorepastotaloxfolha: TWideStringField;
    THitscorepastoqtdcabeca: TWideStringField;
    THitscorepastoidcategoria: TWideStringField;
    THitscorepastopesomedio: TBCDField;
    THitscorepastodatacoleta: TDateField;
    THitscorepastohoracoleta: TTimeField;
    IdHTTP1: TIdHTTP;
    qryAux: TFDQuery;
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
  private
    procedure DeletaTabelaSync(Atabela:string);
    procedure DeletaTabelaDetAnimalPasto;
  public
    host,Porta:string;
    function TestaServidor: string;
    function GetUsuario:string;
    function GetCapim:string;
    function GetCategoria:string;
    function GetRetiro:string;
    function GetPasto:string;
    function GetHistScore:string;
    function GetDetAnimal: string;

    function PostScore:string;
    function PostDetAnimalPasto:string;
  end;

var
  dmSync: TdmSync;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UDmDB;

{$R *.dfm}

{ TdmSync }



{ TdmSync }

procedure TdmSync.DeletaTabelaDetAnimalPasto;
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('delete from detanimaispasto where sync=1');
   try
    ExecSQL;
   except
     on E: Exception do
      ShowMessage(e.Message);
   end
 end;
end;

procedure TdmSync.DeletaTabelaSync(Atabela: string);
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('delete from '+Atabela);
   try
    ExecSQL;
   except
     on E: Exception do
      ShowMessage(e.Message);
   end
 end;
end;

function TdmSync.GetCapim: string;
var
 Url,vJsonString,
 vField:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
begin
   Url := 'http://'+Host+':'+Porta+'/GetCapim';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"TAuxCapim":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TAuxCapim') as TJSONArray;
       DeletaTabelaSync('auxcapim');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TAuxCapim.Close;
          TAuxCapim.Open;
          TAuxCapim.Insert;
          for z := 0 to TAuxCapim.Fields.Count -1 do
          begin
           vField:= StringReplace(TAuxCapim.Fields[z].Name,
            'TAuxCapim','',[rfReplaceAll]);
           TAuxCapim.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           TAuxCapim.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Capim:'+E.Message;
             end;
          end;
       end;
       result:='Capim Baixados com Sucesso'
    end
    else
     Result :='Capim Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function TdmSync.GetDetAnimal: string;
var
 Url,vJsonString,
 vField:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
begin
   Url := 'http://'+Host+':'+Porta+'/GetDetAnimaPasto';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"TDetAnimalPastoGet":[]}') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TDetAnimalPastoGet') as TJSONArray;
       DeletaTabelaDetAnimalPasto;
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TDetAnimalPasto.Close;
          TDetAnimalPasto.Open;
          TDetAnimalPasto.Insert;
          for z := 0 to TDetAnimalPasto.Fields.Count -1 do
          begin
           vField:= StringReplace(TDetAnimalPasto.Fields[z].Name,
            'TDetAnimalPasto','',[rfReplaceAll]);
           if vField<>'sync' then
            TDetAnimalPasto.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          TDetAnimalPasto.FieldByName('sync').AsInteger :=1;
          try
           TDetAnimalPasto.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Det Animal Pasto:'+E.Message;
             end;
          end;
       end;
       result:='Det Animal Pasto Baixados com Sucesso'
    end
    else
     Result :='Det Animal Pasto Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;


function TdmSync.GetCategoria: string;
var
 Url,vJsonString,
 vField:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
begin
   Url := 'http://'+Host+':'+Porta+'/GetCategoria';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"TAuxCategoria":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TAuxCategoria') as TJSONArray;
       DeletaTabelaSync('auxcategoria');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TAuxCategoria.Close;
          TAuxCategoria.Open;
          TAuxCategoria.Insert;
          for z := 0 to TAuxCategoria.Fields.Count -1 do
          begin
           vField:= StringReplace(TAuxCategoria.Fields[z].Name,
            'TAuxCategoria','',[rfReplaceAll]);
           TAuxCategoria.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           TAuxCategoria.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Categorira:'+E.Message;
             end;
          end;
       end;
       result:='Categoria Baixados com Sucesso'
    end
    else
     Result :='Categoria Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function TdmSync.GetHistScore: string;
var
 Url,vJsonString,
 vField:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
begin
   Url := 'http://'+Host+':'+Porta+'/GetHistScore';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"THitscorepasto":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('THitscorepasto') as TJSONArray;
       DeletaTabelaSync('hitscorepasto');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          THitscorepasto.Close;
          THitscorepasto.Open;
          THitscorepasto.Insert;
          for z := 0 to THitscorepasto.Fields.Count -1 do
          begin
           vField:= StringReplace(THitscorepasto.Fields[z].Name,
            'THitscorepasto','',[rfReplaceAll]);
           THitscorepasto.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           THitscorepasto.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Historico de Score:'+E.Message;
             end;
          end;
       end;
       result:='Historico de Score Baixados com Sucesso'
    end
    else
     Result :='Historico de Score Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function TdmSync.GetPasto: string;
var
 Url,vJsonString,
 vField:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
begin
   Url := 'http://'+Host+':'+Porta+'/GetPasto';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"TPasto":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TPasto') as TJSONArray;
       DeletaTabelaSync('pasto');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TPasto.Close;
          TPasto.Open;
          TPasto.Insert;
          for z := 0 to TPasto.Fields.Count -1 do
          begin
           vField:= StringReplace(TPasto.Fields[z].Name,
            'TPasto','',[rfReplaceAll]);
           TPasto.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           TPasto.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Pasto:'+E.Message;
             end;
          end;
       end;
       result:='Pasto Baixados com Sucesso'
    end
    else
     Result :='Pasto Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function TdmSync.GetRetiro: string;
var
 Url,vJsonString,
 vField:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
begin
   Url := 'http://'+Host+':'+Porta+'/GetRetiro';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"TRetiro":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TRetiro') as TJSONArray;
       DeletaTabelaSync('retiro');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TRetiro.Close;
          TRetiro.Open;
          TRetiro.Insert;
          for z := 0 to TRetiro.Fields.Count -1 do
          begin
           vField:= StringReplace(TRetiro.Fields[z].Name,
            'TRetiro','',[rfReplaceAll]);
           TRetiro.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           TRetiro.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Retiro:'+E.Message;
             end;
          end;
       end;
       result:='Retiro Baixados com Sucesso'
    end
    else
     Result :='Retiro Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function TdmSync.GetUsuario: string;
var
 Url,vJsonString,vIsert,
 vField,vFieldJS,vId:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
begin
   Url := 'http://'+Host+':'+Porta+'/GetUsuario';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"TUsuario":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TUsuario') as TJSONArray;
       DeletaTabelaSync('usuario');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TUsuario.Close;
          TUsuario.Open;
          TUsuario.Insert;
          for z := 0 to TUsuario.Fields.Count -1 do
          begin
           vField:= StringReplace(TUsuario.Fields[z].Name,
            'TUsuario','',[rfReplaceAll]);
           TUsuario.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           TUsuario.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Usuario:'+E.Message;
             end;
          end;
       end;
       TUsuario.Close;
       TUsuario.Open;;
       result:='Usuarios Baixados com Sucesso'
    end
    else
     Result :='Usuarios Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function TdmSync.PostDetAnimalPasto: string;
var
 Txt         : TextFile;
 Quebra      : TStringList;
 LJSon       : TJSONArray;
 Url,URLDec,vReultHTTP,vReultHTTPc,
 vReultHTTPClean,idOld,idNew: String;
 JsonToSend  : TStringStream;
 i           : integer;
 StrAux      : TStringWriter;
 txtJson     : TJsonTextWriter;
 LJsonObj    : TJSONObject;
begin
  TDetAnimalPasto.Close;
  TDetAnimalPasto.Open;
  if not TDetAnimalPasto.IsEmpty then
    begin
     TDetAnimalPasto.First;
     while not TDetAnimalPasto.Eof do
     begin
       idOld   := TDetAnimalPastoid.AsString;
       StrAux  := TStringWriter.Create;
       txtJson := TJsonTextWriter.Create(StrAux);
       txtJson.Formatting := TJsonFormatting.Indented;
       txtJson.WriteStartObject;
       TxtJSON.WritePropertyName('TDetAnimalPasto');
        TxtJSON.WriteStartArray;
         txtJson.WriteStartObject;
           txtJson.WritePropertyName('id');
           txtJson.WriteValue(TDetAnimalPastoid.AsString);
           txtJson.WritePropertyName('status');
           txtJson.WriteValue(TDetAnimalPastostatus.AsString);
           txtJson.WritePropertyName('datareg');
           txtJson.WriteValue(TDetAnimalPastodatareg.AsString);
           txtJson.WritePropertyName('idusuario');
           txtJson.WriteValue(TDetAnimalPastoidusuario.AsString);
           txtJson.WritePropertyName('dataalteracao');
           txtJson.WriteValue(TDetAnimalPastodataalteracao.AsString);
           txtJson.WritePropertyName('idusuarioalteracao');
           txtJson.WriteValue(TDetAnimalPastoidusuarioalteracao.AsString);
           txtJson.WritePropertyName('idpasto');
           txtJson.WriteValue(TDetAnimalPastoidpasto.AsString);
           txtJson.WritePropertyName('idcategoria');
           txtJson.WriteValue(TDetAnimalPastoidcategoria.AsString);
           txtJson.WritePropertyName('qtdanimais');
           txtJson.WriteValue(TDetAnimalPastoqtdanimais.AsString);
           txtJson.WritePropertyName('pesomedio');
           txtJson.WriteValue(TDetAnimalPastopesomedio.AsString);
           txtJson.WritePropertyName('dataentrada');
           txtJson.WriteValue(TDetAnimalPastodataentrada.AsString);
           txtJson.WritePropertyName('datasaida');
           txtJson.WriteValue(TDetAnimalPastodatasaida.AsString);
           txtJson.WritePropertyName('tipo');
           txtJson.WriteValue(TDetAnimalPastotipo.AsString);
           txtJson.WriteEndObject;
       TxtJSON.WriteEndArray; //Fecha Array dos Itens
       txtJson.WriteEndObject;
       LJsonObj := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
       JsonToSend := TStringStream.Create(LJsonObj.ToJSON);
       Url := 'http://'+Host+':'+Porta+'/DetAnimalPasto';
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.ContentType := 'application/json';
       IdHTTP1.Request.Accept      := 'application/json';
       vReultHTTP := IdHTTP1.Post(url,JsonToSend);
       if IdHTTP1.ResponseCode=200 then
       begin
         vReultHTTP := StringReplace(vReultHTTP,'{"Ok":"','',[rfReplaceAll]);
         vReultHTTP := StringReplace(vReultHTTP,'"}','',[rfReplaceAll]);
         idNew      := vReultHTTP;
         TThread.Synchronize(nil, procedure
         begin
          dmDB.AlteraFlagSyncDetAnimalEntrada(TDetAnimalPastoid.AsString,vReultHTTP,'1');
         end);
       end;
       TDetAnimalPasto.Next;
    end;
  end;
end;

function TdmSync.PostScore: string;
var
 URL,vReultHTTP:STRING;
 JsonToSend  : TStringStream;
 I:integer;
begin
 TScorePasto.Close;
 TScorePasto.Open;
 if not TScorePasto.IsEmpty then
 begin
   JsonToSend := TStringStream.Create(nil);
   TScorePasto.SaveToStream(JsonToSend,sfJSON);
   Url := 'http://'+Host+':'+Porta+'/PostScore';
   IdHTTP1.Request.CustomHeaders.Clear;
   IdHTTP1.Request.ContentType := 'application/json';
   IdHTTP1.Request.Accept      := 'application/json';
   try
     vReultHTTP := IdHTTP1.Post(url,JsonToSend);
     if copy(vReultHTTP,0,4)='{"OK'then
     begin
       vReultHTTP := StringReplace(vReultHTTP,'{"OK":"','',[rfReplaceAll]);
       vReultHTTP := StringReplace(vReultHTTP,'"}','',[rfReplaceAll]);
       dmDB.AlteraFlagSync('scorepasto', vReultHTTP,'1');
       Result     := 'Score enviando com sucesso!';
     end;
   except
     on E: Exception do
     begin
       Result :='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
 end;
end;

function TdmSync.TestaServidor: string;
var
 Url,vJsonString,vID:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
begin
   Url :='http://'+Host+':'+Porta+'/GetTesteServidor';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    Result:= vJsonString;
   except
     Result  := 'Erro';
   end;
end;

end.
