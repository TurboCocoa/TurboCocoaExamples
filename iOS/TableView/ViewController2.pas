unit ViewController2;

interface

uses
  System.SysUtils, System.TypInfo, System.Classes, System.Types, System.Rtti,
  Macapi.ObjectiveC, Macapi.ObjCRuntime, Macapi.CoreFoundation, iOSapi.Foundation, iOSapi.CocoaTypes,
  iOSapi.UIKit, Macapi.Helpers, CocoaTouch;

type

  ViewController = interface(UIViewController)
  ['{94B9D1EB-6758-4A4D-B46C-3DF0D224B600}']
    function numberOfSectionsInTableView( tableView: UITableView ): NSInteger; cdecl;
    function tableView( tableView: UITableView; numberOfRowsInSection: NSInteger): NSInteger; cdecl; overload;
    function tableView(tableView: UITableView; cellForRowAtIndexPath: NSIndexPath): UITableViewCell; cdecl; overload;
    procedure dealloc; cdecl;
  end;

  TViewController = class(TCocoaGeneric<UIViewController>)
  private
  protected
    function GetObjectiveCClass: PTypeInfo; override;
  public
    function numberOfSectionsInTableView( tableView: UITableView ): NSInteger; cdecl;
    function tableView( tableView: UITableView; numberOfRowsInSection: NSInteger): NSInteger; overload; cdecl;
    function tableView(tableView: UITableView; cellForRowAtIndexPath: NSIndexPath): UITableViewCell; overload; cdecl;
  end;

implementation

{ ViewController }

function TViewController.GetObjectiveCClass: PTypeInfo;
begin
  Result := TypeInfo(ViewController);
end;

function TViewController.numberOfSectionsInTableView(tableView: UITableView): NSInteger;
begin
  Result := 1;
end;

function TViewController.tableView(tableView: UITableView; numberOfRowsInSection: NSInteger): NSInteger;
begin
  Result := 100;
end;

function TViewController.tableView(tableView: UITableView; cellForRowAtIndexPath: NSIndexPath): UITableViewCell;
begin
  if tableView.dequeueReusableCellWithIdentifier(NSStr('cell')) <> nil then
    Result := TUITableViewCell.Wrap(tableView.dequeueReusableCellWithIdentifier(NSStr('cell')))
  else
    Result := TUITableViewCell.Wrap(TUITableViewCell.Alloc.initWithStyle(UITableViewCellStyleDefault, NSStr('cell')));

  Result.textLabel.setText(NSStr('Title from Delphi'));
  Result.detailTextLabel.setText(NSStr('Detail from Delphi'));
end;

initialization
  TViewController.RegisterCocoa;
end.