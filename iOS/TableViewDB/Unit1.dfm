object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 354
  Width = 448
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Public\Documents\Embarcadero\Studio\17.0\Sampl' +
        'es\Data\Employees.s3db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 128
    Top = 208
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'Employee'
    TableName = 'Employee'
    Left = 224
    Top = 208
    object FDTable1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDTable1Name: TWideMemoField
      FieldName = 'Name'
      Origin = 'Name'
      BlobType = ftWideMemo
    end
    object FDTable1Department: TWideMemoField
      FieldName = 'Department'
      Origin = 'Department'
      BlobType = ftWideMemo
    end
    object FDTable1Seniority: TIntegerField
      FieldName = 'Seniority'
      Origin = 'Seniority'
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Console'
    Left = 328
    Top = 208
  end
end
