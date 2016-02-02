unit AppDelegate1;

interface

uses
  System.SysUtils, System.TypInfo, System.Classes, System.Types, System.Rtti, Macapi.ObjectiveC, Macapi.ObjCRuntime, 
  Macapi.CoreFoundation, iOSapi.Foundation, iOSapi.UIKit, iOSapi.CocoaTypes, Macapi.Helpers, CocoaTouch, Unit1;

type

  AppDelegate = interface(UIResponder)
  ['{9F3CEE6F-ABFC-4B6B-892C-97C8C2575D6A}']
    function application(Sender: UIApplication; didFinishLaunchingWithOptions: NSDictionary): Boolean; overload; cdecl;
    procedure setWindow(const value: UIWindow); cdecl;
    function window: UIWindow; cdecl;
    procedure dealloc; cdecl;
  end;

  TAppDelegate = class(TCocoaObject)
  private
    FWindow: UIWindow;
  protected
    function GetObjectiveCClass: PTypeInfo; override;
  public
    function application(Sender: UIApplication; didFinishLaunchingWithOptions: NSDictionary): Boolean; overload; cdecl;
    [IBOutlet]
    procedure setWindow(const value: UIWindow); cdecl;
    function window: UIWindow; cdecl;
  end;

implementation

{ AppDelegate }

function TAppDelegate.application(Sender: UIApplication; didFinishLaunchingWithOptions: NSDictionary): Boolean;
begin
  // Override point for customization after application launch.
  DataModule1 := TDataModule1.Create(nil);
  Result := True;
end;

procedure TAppDelegate.setWindow(const value: UIWindow); cdecl;
begin
  FWindow := value;
  FWindow.retain;
end;

function TAppDelegate.window: UIWindow;
begin
  Result := FWindow;
end;

function TAppDelegate.GetObjectiveCClass: PTypeInfo;
begin
  Result := TypeInfo(AppDelegate);
end;

initialization
  TAppDelegate.RegisterCocoa;
end.