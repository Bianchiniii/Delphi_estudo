object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro Funcion'#225'rio'
  ClientHeight = 238
  ClientWidth = 568
  Color = clMenu
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 568
    Height = 238
    Align = alClient
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 37
      Width = 35
      Height = 13
      Caption = 'Fun'#231#227'o'
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 408
      Top = 72
      Width = 33
      Height = 13
      Caption = 'B'#244'nus:'
    end
    object Label4: TLabel
      Left = 241
      Top = 72
      Width = 36
      Height = 13
      Caption = 'Sal'#225'rio:'
    end
    object edtNome: TEdit
      Left = 57
      Top = 69
      Width = 176
      Height = 21
      TabOrder = 0
    end
    object edtSalario: TEdit
      Left = 284
      Top = 69
      Width = 105
      Height = 21
      TabOrder = 1
    end
    object edtBonus: TEdit
      Left = 448
      Top = 69
      Width = 105
      Height = 21
      TabOrder = 2
    end
    object bntCadastrar: TButton
      Left = 16
      Top = 120
      Width = 113
      Height = 25
      Caption = 'Caadastrar'
      TabOrder = 3
      OnClick = bntCadastrarClick
    end
    object btnCalcSalario: TButton
      Left = 346
      Top = 120
      Width = 113
      Height = 25
      Caption = 'Calcular Sal'#225'rio'
      TabOrder = 4
    end
    object Button2: TButton
      Left = 465
      Top = 120
      Width = 41
      Height = 25
      Caption = '<<'
      TabOrder = 5
    end
    object Button1: TButton
      Left = 512
      Top = 120
      Width = 41
      Height = 25
      Caption = '>>'
      TabOrder = 6
    end
    object cbFuncao: TComboBox
      Left = 57
      Top = 34
      Width = 496
      Height = 21
      TabOrder = 7
      Items.Strings = (
        'Administrativo'
        'Vendedor'
        'Funcionario')
    end
    object memoResult: TMemo
      Left = 16
      Top = 160
      Width = 537
      Height = 73
      TabOrder = 8
    end
  end
end
