object dmDB: TdmDB
  OldCreateOrder = False
  Height = 356
  Width = 645
  object FCon: TFDConnection
    Params.Strings = (
      
        'Database=E:\20102021\Projetos2021\Pecuarizze\ManejoPastagem\Mobi' +
        'le\db\db.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    BeforeConnect = FConBeforeConnect
    Left = 32
    Top = 16
  end
  object vQry: TFDQuery
    Connection = FCon
    Left = 88
    Top = 16
  end
  object TUsuario: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select a.*,'
      ' case '
      '   when tipo=0 then '#39'Padrao'#39
      '   when tipo=1 then '#39'ADM'#39
      ' end tipostr '
      'from usuario a '
      'where status=1')
    Left = 160
    Top = 16
    object TUsuarioid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TUsuarionome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object TUsuarioemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 100
    end
    object TUsuariotelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
    end
    object TUsuariotipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 32767
    end
    object TUsuariousuario: TStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Required = True
      Size = 100
    end
    object TUsuariosenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 100
    end
    object TUsuariodataregistro: TSQLTimeStampField
      FieldName = 'dataregistro'
      Origin = 'dataregistro'
    end
    object TUsuariostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object TUsuarioidcliente: TWideStringField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
      Size = 32767
    end
    object TUsuariotipostr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipostr'
      Origin = 'tipostr'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object TAuxCategoria: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from auxcategoria'
      'where status=1')
    Left = 248
    Top = 16
    object TAuxCategoriaid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TAuxCategoriastatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TAuxCategoriadatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TAuxCategoriaidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TAuxCategoriadataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TAuxCategoriaidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TAuxCategorianome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object TAuxCategoriaidcliente: TWideStringField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
      Size = 32767
    end
    object TAuxCategoriasexo: TWideStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 32767
    end
  end
  object TAuxCapim: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from auxcapim'
      'where status=1')
    Left = 248
    Top = 72
    object TAuxCapimid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TAuxCapimstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TAuxCapimdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TAuxCapimidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TAuxCapimdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TAuxCapimidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TAuxCapimnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object TAuxCapimidcliente: TWideStringField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
      Size = 32767
    end
  end
  object TRetiro: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from retiro'
      'where status=1')
    Left = 160
    Top = 64
    object TRetiroid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TRetirostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TRetirodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TRetiroidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TRetirodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TRetiroidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TRetiroidcliente: TWideStringField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
      Size = 32767
    end
    object TRetironome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object TRetirolatitude: TStringField
      FieldName = 'latitude'
      Origin = 'latitude'
    end
    object TRetirolongitude: TStringField
      FieldName = 'longitude'
      Origin = 'longitude'
    end
    object TRetiroareahectare: TBCDField
      FieldName = 'areahectare'
      Origin = 'areahectare'
      Precision = 15
      Size = 2
    end
  end
  object TPasto: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select '
      ' p.*,'
      ' r.nome Retiro,'
      ' a.nome Capim,'
      ' CASE'
      '  when p.status=0 then '#39'INATIVO'#39
      '  when p.status=1 then '#39'ATIVO'#39
      ' END StatusStr'
      'from pasto p '
      'join retiro r  on p.idretiro=r.id '
      'left join auxcapim a on a.id=p.idcapim '
      'where p.status>-1')
    Left = 160
    Top = 120
    object TPastoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPastostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TPastodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TPastoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TPastodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TPastoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TPastoidretiro: TWideStringField
      FieldName = 'idretiro'
      Origin = 'idretiro'
      Required = True
      Size = 32767
    end
    object TPastonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object TPastolatitude: TStringField
      FieldName = 'latitude'
      Origin = 'latitude'
    end
    object TPastolongitude: TStringField
      FieldName = 'longitude'
      Origin = 'longitude'
    end
    object TPastoareahectare: TBCDField
      FieldName = 'areahectare'
      Origin = 'areahectare'
      Precision = 15
      Size = 2
    end
    object TPastoqtdeanimais: TWideStringField
      FieldName = 'qtdeanimais'
      Origin = 'qtdeanimais'
      Required = True
      Size = 32767
    end
    object TPastopesomedio: TBCDField
      FieldName = 'pesomedio'
      Origin = 'pesomedio'
      Precision = 15
      Size = 2
    end
    object TPastoidcategoria: TWideStringField
      FieldName = 'idcategoria'
      Origin = 'idcategoria'
      Size = 32767
    end
    object TPastoidcapim: TWideStringField
      FieldName = 'idcapim'
      Origin = 'idcapim'
      Required = True
      Size = 32767
    end
    object TPastoidcliente: TWideStringField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
      Size = 32767
    end
    object TPastoRetiro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retiro'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TPastoCapim: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Capim'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TPastoStatusStr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'StatusStr'
      Origin = 'StatusStr'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object TScorePasto: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select '
      ' s.*,'
      ' p.nome Pasto,'
      ' c.nome Capim,'
      ' ca.nome categoria,'
      ' CASE'
      '  when s.statuspasto =0 then '#39'INATIVO'#39
      '  when s.statuspasto =1 then '#39'ATIVO'#39
      ' END StatusStr,'
      ' CASE'
      '  when s.taloxfolha  =0 then '#39'TALO'#39
      '  when s.taloxfolha  =1 then '#39'FOLHA'#39
      ' END taloxfolhaStr,'
      ' r.nome Retiro'
      'from scorepasto s '
      'join pasto p  on s.idpasto=p.id '
      'join retiro r  on r.id=p.idretiro '
      'join auxcapim c on c.id=p.idcapim '
      'left join auxcategoria ca on ca.id=s.idcategoria '
      'where s.status=1')
    Left = 160
    Top = 176
    object TScorePastoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TScorePastostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object TScorePastodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TScorePastoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Size = 32767
    end
    object TScorePastodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TScorePastoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TScorePastoidcliente: TWideStringField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Size = 32767
    end
    object TScorePastoidpasto: TWideStringField
      FieldName = 'idpasto'
      Origin = 'idpasto'
      Size = 32767
    end
    object TScorePastostatuspasto: TWideStringField
      FieldName = 'statuspasto'
      Origin = 'statuspasto'
      Size = 32767
    end
    object TScorePastoscore: TBCDField
      FieldName = 'score'
      Origin = 'score'
      Precision = 15
      Size = 2
    end
    object TScorePastotaloxfolha: TWideStringField
      FieldName = 'taloxfolha'
      Origin = 'taloxfolha'
      Size = 32767
    end
    object TScorePastoqtdcabeca: TWideStringField
      FieldName = 'qtdcabeca'
      Origin = 'qtdcabeca'
      Size = 32767
    end
    object TScorePastoidcategoria: TWideStringField
      FieldName = 'idcategoria'
      Origin = 'idcategoria'
      Size = 32767
    end
    object TScorePastopesomedio: TBCDField
      FieldName = 'pesomedio'
      Origin = 'pesomedio'
      Precision = 15
      Size = 3
    end
    object TScorePastodatacoleta: TDateField
      FieldName = 'datacoleta'
      Origin = 'datacoleta'
    end
    object TScorePastohoracoleta: TTimeField
      FieldName = 'horacoleta'
      Origin = 'horacoleta'
    end
    object TScorePastosync: TIntegerField
      FieldName = 'sync'
      Origin = 'sync'
    end
    object TScorePastoPasto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pasto'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TScorePastoCapim: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Capim'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TScorePastocategoria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'categoria'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TScorePastoStatusStr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'StatusStr'
      Origin = 'StatusStr'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object TScorePastotaloxfolhaStr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'taloxfolhaStr'
      Origin = 'taloxfolhaStr'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object TScorePastoRetiro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retiro'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object SQLiteDriverLink: TFDPhysSQLiteDriverLink
    Left = 32
    Top = 72
  end
  object qryConfig: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from config')
    Left = 352
    Top = 16
    object qryConfigIP_SERVIDOR: TWideStringField
      FieldName = 'IP_SERVIDOR'
      Origin = 'IP_SERVIDOR'
      Size = 15
    end
    object qryConfigPOTA_SERVIDOR: TIntegerField
      FieldName = 'POTA_SERVIDOR'
      Origin = 'POTA_SERVIDOR'
    end
    object qryConfigSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
    end
    object qryConfigSalvarLogin: TIntegerField
      FieldName = 'SalvarLogin'
      Origin = 'SalvarLogin'
    end
  end
  object qryUltimaColeta: TFDQuery
    Connection = FCon
    SQL.Strings = (
      'select '
      ' s.*,'
      ' p.nome Pasto,'
      ' c.nome Capim,'
      ' ca.nome categoria,'
      ' CASE'
      '  when s.statuspasto =0 then '#39'INATIVO'#39
      '  when s.statuspasto =1 then '#39'ATIVO'#39
      ' END StatusStr,'
      ' CASE'
      '  when s.taloxfolha  =0 then '#39'TALO'#39
      '  when s.taloxfolha  =1 then '#39'FOLHA'#39
      ' END taloxfolhaStr'
      'from hitscorepasto s '
      'join pasto p  on s.idpasto=p.id '
      'join auxcapim c on c.id=p.idcapim '
      'left join auxcategoria ca on ca.id=s.idcategoria '
      'where s.status=1')
    Left = 326
    Top = 144
    object qryUltimaColetaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryUltimaColetastatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object qryUltimaColetadatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object qryUltimaColetaidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object qryUltimaColetadataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object qryUltimaColetaidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object qryUltimaColetaidcliente: TWideStringField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
      Size = 32767
    end
    object qryUltimaColetaidpasto: TWideStringField
      FieldName = 'idpasto'
      Origin = 'idpasto'
      Required = True
      Size = 32767
    end
    object qryUltimaColetastatuspasto: TWideStringField
      FieldName = 'statuspasto'
      Origin = 'statuspasto'
      Required = True
      Size = 32767
    end
    object qryUltimaColetascore: TBCDField
      FieldName = 'score'
      Origin = 'score'
      Required = True
      Precision = 15
      Size = 2
    end
    object qryUltimaColetataloxfolha: TWideStringField
      FieldName = 'taloxfolha'
      Origin = 'taloxfolha'
      Required = True
      Size = 32767
    end
    object qryUltimaColetaqtdcabeca: TWideStringField
      FieldName = 'qtdcabeca'
      Origin = 'qtdcabeca'
      Required = True
      Size = 32767
    end
    object qryUltimaColetaidcategoria: TWideStringField
      FieldName = 'idcategoria'
      Origin = 'idcategoria'
      Size = 32767
    end
    object qryUltimaColetapesomedio: TBCDField
      FieldName = 'pesomedio'
      Origin = 'pesomedio'
      Precision = 15
      Size = 3
    end
    object qryUltimaColetadatacoleta: TDateField
      FieldName = 'datacoleta'
      Origin = 'datacoleta'
      Required = True
    end
    object qryUltimaColetahoracoleta: TTimeField
      FieldName = 'horacoleta'
      Origin = 'horacoleta'
      Required = True
    end
    object qryUltimaColetaPasto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Pasto'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryUltimaColetaCapim: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Capim'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryUltimaColetacategoria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'categoria'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryUltimaColetaStatusStr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'StatusStr'
      Origin = 'StatusStr'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryUltimaColetataloxfolhaStr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'taloxfolhaStr'
      Origin = 'taloxfolhaStr'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object TDadosPasto: TFDQuery
    Connection = FCon
    SQL.Strings = (
      'select '
      ' p.*,'
      ' r.nome Retiro,'
      ' a.nome Capim,'
      ' c.nome Categoria,'
      ' CASE'
      '  when p.status=0 then '#39'INATIVO'#39
      '  when p.status=1 then '#39'ATIVO'#39
      ' END StatusStr'
      'from pasto p '
      'join retiro r  on p.idretiro=r.id '
      'left join auxcapim a on a.id=p.idcapim '
      'left join auxcategoria c ON c.id=p.idcategoria '
      'where p.status>-1')
    Left = 240
    Top = 240
    object TDadosPastoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TDadosPastostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object TDadosPastodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TDadosPastoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Size = 32767
    end
    object TDadosPastodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TDadosPastoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TDadosPastoidretiro: TWideStringField
      FieldName = 'idretiro'
      Origin = 'idretiro'
      Size = 32767
    end
    object TDadosPastonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object TDadosPastolatitude: TStringField
      FieldName = 'latitude'
      Origin = 'latitude'
    end
    object TDadosPastolongitude: TStringField
      FieldName = 'longitude'
      Origin = 'longitude'
    end
    object TDadosPastoareahectare: TBCDField
      FieldName = 'areahectare'
      Origin = 'areahectare'
      Precision = 15
      Size = 2
    end
    object TDadosPastoqtdeanimais: TWideStringField
      FieldName = 'qtdeanimais'
      Origin = 'qtdeanimais'
      Size = 32767
    end
    object TDadosPastopesomedio: TBCDField
      FieldName = 'pesomedio'
      Origin = 'pesomedio'
      Precision = 15
      Size = 2
    end
    object TDadosPastoidcategoria: TWideStringField
      FieldName = 'idcategoria'
      Origin = 'idcategoria'
      Size = 32767
    end
    object TDadosPastoidcapim: TWideStringField
      FieldName = 'idcapim'
      Origin = 'idcapim'
      Size = 32767
    end
    object TDadosPastoidcliente: TWideStringField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Size = 32767
    end
    object TDadosPastoRetiro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retiro'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TDadosPastoCapim: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Capim'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TDadosPastoCategoria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TDadosPastoStatusStr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'StatusStr'
      Origin = 'StatusStr'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object TDetAnimalPasto: TFDQuery
    CachedUpdates = True
    OnReconcileError = TDetAnimalPastoReconcileError
    Connection = FCon
    SQL.Strings = (
      'select '
      ' d.*,a.nome categoria,'
      ' coalesce(d.dataentrada,d.datasaida)dataOp,'
      'case'
      ' when tipo=1 then '#39'ENTRADA'#39
      ' when tipo=2 then '#39'SAIDA'#39
      'end tipoStr '
      'from detanimaispasto d '
      'join auxcategoria a on a.id=d.idcategoria '
      'where d.status=1')
    Left = 344
    Top = 208
    object TDetAnimalPastoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object TDetAnimalPastostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object TDetAnimalPastodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TDetAnimalPastoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Size = 32767
    end
    object TDetAnimalPastodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TDetAnimalPastoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TDetAnimalPastoidpasto: TWideStringField
      FieldName = 'idpasto'
      Origin = 'idpasto'
      Size = 32767
    end
    object TDetAnimalPastoidcategoria: TWideStringField
      FieldName = 'idcategoria'
      Origin = 'idcategoria'
      Size = 32767
    end
    object TDetAnimalPastoqtdanimais: TWideStringField
      FieldName = 'qtdanimais'
      Origin = 'qtdanimais'
      Size = 32767
    end
    object TDetAnimalPastopesomedio: TBCDField
      FieldName = 'pesomedio'
      Origin = 'pesomedio'
      Precision = 15
      Size = 2
    end
    object TDetAnimalPastodataentrada: TDateField
      FieldName = 'dataentrada'
      Origin = 'dataentrada'
    end
    object TDetAnimalPastodatasaida: TDateField
      FieldName = 'datasaida'
      Origin = 'datasaida'
    end
    object TDetAnimalPastosync: TIntegerField
      FieldName = 'sync'
      Origin = 'sync'
    end
    object TDetAnimalPastotipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object TDetAnimalPastocategoria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'categoria'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object TDetAnimalPastodataOp: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'dataOp'
      Origin = 'dataOp'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object TDetAnimalPastotipoStr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipoStr'
      Origin = 'tipoStr'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object TScoreTable: TFDQuery
    Connection = FCon
    SQL.Strings = (
      'select '
      '*'
      'from scorepasto s ')
    Left = 168
    Top = 224
    object TScoreTableid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TScoreTablestatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object TScoreTabledatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TScoreTableidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Size = 32767
    end
    object TScoreTabledataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TScoreTableidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TScoreTableidcliente: TWideStringField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Size = 32767
    end
    object TScoreTableidpasto: TWideStringField
      FieldName = 'idpasto'
      Origin = 'idpasto'
      Size = 32767
    end
    object TScoreTablestatuspasto: TWideStringField
      FieldName = 'statuspasto'
      Origin = 'statuspasto'
      Size = 32767
    end
    object TScoreTablescore: TBCDField
      FieldName = 'score'
      Origin = 'score'
      Precision = 15
      Size = 2
    end
    object TScoreTabletaloxfolha: TWideStringField
      FieldName = 'taloxfolha'
      Origin = 'taloxfolha'
      Size = 32767
    end
    object TScoreTableqtdcabeca: TWideStringField
      FieldName = 'qtdcabeca'
      Origin = 'qtdcabeca'
      Size = 32767
    end
    object TScoreTableidcategoria: TWideStringField
      FieldName = 'idcategoria'
      Origin = 'idcategoria'
      Size = 32767
    end
    object TScoreTablepesomedio: TBCDField
      FieldName = 'pesomedio'
      Origin = 'pesomedio'
      Precision = 15
      Size = 3
    end
    object TScoreTabledatacoleta: TDateField
      FieldName = 'datacoleta'
      Origin = 'datacoleta'
    end
    object TScoreTablehoracoleta: TTimeField
      FieldName = 'horacoleta'
      Origin = 'horacoleta'
    end
    object TScoreTablesync: TIntegerField
      FieldName = 'sync'
      Origin = 'sync'
    end
  end
end
