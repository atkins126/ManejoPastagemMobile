object dmSync: TdmSync
  OldCreateOrder = False
  Height = 263
  Width = 465
  object TUsuario: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select *'
      'from usuario ')
    Left = 40
    Top = 8
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
  end
  object TAuxCategoria: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from auxcategoria')
    Left = 128
    Top = 8
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
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from auxcapim')
    Left = 128
    Top = 64
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
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from retiro')
    Left = 40
    Top = 56
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
    Connection = dmDB.FCon
    SQL.Strings = (
      'select '
      '*'
      'from pasto p ')
    Left = 40
    Top = 112
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
  end
  object TScorePasto: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select '
      ' *'
      'from scorepasto s '
      'where s.status=1'
      'and sync=0')
    Left = 40
    Top = 168
    object TScorePastoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TScorePastostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TScorePastodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TScorePastoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
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
      Required = True
      Size = 32767
    end
    object TScorePastoidpasto: TWideStringField
      FieldName = 'idpasto'
      Origin = 'idpasto'
      Required = True
      Size = 32767
    end
    object TScorePastostatuspasto: TWideStringField
      FieldName = 'statuspasto'
      Origin = 'statuspasto'
      Required = True
      Size = 32767
    end
    object TScorePastoscore: TBCDField
      FieldName = 'score'
      Origin = 'score'
      Required = True
      Precision = 15
      Size = 2
    end
    object TScorePastotaloxfolha: TWideStringField
      FieldName = 'taloxfolha'
      Origin = 'taloxfolha'
      Required = True
      Size = 32767
    end
    object TScorePastoqtdcabeca: TWideStringField
      FieldName = 'qtdcabeca'
      Origin = 'qtdcabeca'
      Required = True
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
      Required = True
    end
    object TScorePastohoracoleta: TTimeField
      FieldName = 'horacoleta'
      Origin = 'horacoleta'
      Required = True
    end
    object TScorePastosync: TIntegerField
      FieldName = 'sync'
      Origin = 'sync'
      Required = True
    end
  end
  object THitscorepasto: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from hitscorepasto')
    Left = 128
    Top = 128
    object THitscorepastoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      Required = True
    end
    object THitscorepastostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object THitscorepastodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object THitscorepastoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object THitscorepastodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object THitscorepastoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object THitscorepastoidcliente: TWideStringField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
      Size = 32767
    end
    object THitscorepastoidpasto: TWideStringField
      FieldName = 'idpasto'
      Origin = 'idpasto'
      Required = True
      Size = 32767
    end
    object THitscorepastostatuspasto: TWideStringField
      FieldName = 'statuspasto'
      Origin = 'statuspasto'
      Required = True
      Size = 32767
    end
    object THitscorepastoscore: TBCDField
      FieldName = 'score'
      Origin = 'score'
      Required = True
      Precision = 15
      Size = 2
    end
    object THitscorepastotaloxfolha: TWideStringField
      FieldName = 'taloxfolha'
      Origin = 'taloxfolha'
      Required = True
      Size = 32767
    end
    object THitscorepastoqtdcabeca: TWideStringField
      FieldName = 'qtdcabeca'
      Origin = 'qtdcabeca'
      Required = True
      Size = 32767
    end
    object THitscorepastoidcategoria: TWideStringField
      FieldName = 'idcategoria'
      Origin = 'idcategoria'
      Size = 32767
    end
    object THitscorepastopesomedio: TBCDField
      FieldName = 'pesomedio'
      Origin = 'pesomedio'
      Precision = 15
      Size = 3
    end
    object THitscorepastodatacoleta: TDateField
      FieldName = 'datacoleta'
      Origin = 'datacoleta'
      Required = True
    end
    object THitscorepastohoracoleta: TTimeField
      FieldName = 'horacoleta'
      Origin = 'horacoleta'
      Required = True
    end
  end
  object IdHTTP1: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 232
    Top = 144
  end
  object qryAux: TFDQuery
    Connection = dmDB.FCon
    Left = 280
    Top = 72
  end
  object TDetAnimalPasto: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select a.* from detanimaispasto a  '
      'where sync=0')
    Left = 136
    Top = 184
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
  end
end
