program TableViewDB;

uses
  System.StartUpCopy,
  CocoaTouch,
  AppDelegate1 in 'AppDelegate1.pas',
  ViewController1 in 'ViewController1.pas',
  Unit1 in 'Unit1.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  ExitCode := UIApplicationMain(System.ArgCount, System.ArgValues, 'AppDelegate');
end.