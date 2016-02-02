program TableView;

uses
  System.StartUpCopy,
  CocoaTouch,
  AppDelegate2 in 'AppDelegate2.pas',
  ViewController2 in 'ViewController2.pas';

{$R *.res}

begin
  ExitCode := UIApplicationMain(System.ArgCount, System.ArgValues, 'AppDelegate');
end.