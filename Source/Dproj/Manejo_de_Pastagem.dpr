program Manejo_de_Pastagem;

uses
  System.StartUpCopy,
  FMX.Forms,
  UPrincipal in '..\Principal\UPrincipal.pas' {frmPrincipal},
  UDmDB in '..\DmDB\UDmDB.pas' {dmDB: TDataModule},
  UDmSyncData in '..\DmDB\UDmSyncData.pas' {dmSync: TDataModule},
  UScorePasto in '..\ScorePasto\UScorePasto.pas' {frmScorePasto};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TdmDB, dmDB);
  Application.CreateForm(TdmSync, dmSync);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmScorePasto, frmScorePasto);
  Application.Run;
end.
