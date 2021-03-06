unit TReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppProd, ppClass, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, DB,
  ADODB, ppBands, ppCtrls, ppModule, raCodMod, ppStrtch, ppSubRpt,
  ppBarCod, ppVar, ppPrnabl, ppCache, ppMemo, ppEndUsr, StdCtrls, Grids,
  DBGrids, raide;

type
  TFrmReport = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    vmark: TLabel;
    Adoquery5: TADOQuery;
    DataSource1: TDataSource;
    TCompanyInfo: TADOQuery;
    TCompanyInfoCompany_Name: TStringField;
    TCompanyInfoCompany_name2: TStringField;
    TCompanyInfoCompany_name3: TStringField;
    TCompanyInfoship_address: TStringField;
    TCompanyInfoCompany_Icon: TBlobField;
    TCompanyInfoSITE_INFO_ADD_1: TStringField;
    TCompanyInfoSITE_INFO_ADD_2: TStringField;
    TCompanyInfoSITE_INFO_ADD_3: TStringField;
    TCompanyInfoSITE_INFO_PHONE: TStringField;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    CompanyInfo: TppDBPipeline;
    BaseInfo: TppDBPipeline;
    ADOQuery2: TADOQuery;
    ADOQuery2rkey: TAutoIncField;
    WideStringField1: TWideStringField;
    GenParameters: TppDBPipeline;
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    InventItems: TppDBPipeline;
    DataSource5: TDataSource;
    PCB_CUT: TppDBPipeline;
    ADOQuery2GenParam2: TWideStringField;
    ADOQuery1dept_code: TStringField;
    ADOQuery1dept_name: TStringField;
    ADOQuery1inv_part_number: TStringField;
    ADOQuery1inv_part_description: TStringField;
    ADOQuery1len_size: TStringField;
    ADOQuery1wei_size: TStringField;
    ADOQuery1unit_code: TStringField;
    ADOQuery1step: TSmallintField;
    ADOQuery1quan_bom: TFloatField;
    ADOQuery1quan_issued: TFloatField;
    ADOQuery1status: TSmallintField;
    ADOQuery1vendor: TStringField;
    ADOQuery1inventor: TStringField;
    ADOQuery1spec: TStringField;
    ADOQuery3: TADOQuery;
    ADOQuery2MI_FLOW: TStringField;
    ppDesigner1: TppDesigner;
    ADOQuery2layers: TWordField;
    ADOQuery2layers_info: TMemoField;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    ppDBImage1: TppDBImage;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine23: TppLine;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLine21: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine32: TppLine;
    ppDBMemo2: TppDBMemo;
    ppDBMemo3: TppDBMemo;
    ppSystemVariable1: TppSystemVariable;
    ppLabel29: TppLabel;
    ppDBText13: TppDBText;
    ppLabel44: TppLabel;
    ppDBMemo7: TppDBMemo;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText24: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine20: TppLine;
    ppLine7: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine15: TppLine;
    ppLine22: TppLine;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText20: TppDBText;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine10: TppLine;
    ppLine36: TppLine;
    ppDBMemo1: TppDBMemo;
    ppDBMemo5: TppDBMemo;
    ppFooterBand1: TppFooterBand;
    ppLine25: TppLine;
    ppLabel25: TppLabel;
    ppLabel28: TppLabel;
    ppDBText18: TppDBText;
    ppLabel19: TppLabel;
    ppLabel31: TppLabel;
    ppLabel37: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine24: TppLine;
    ppLine9: TppLine;
    ppLabel10: TppLabel;
    ppLine5: TppLine;
    ppLabel17: TppLabel;
    ppLine28: TppLine;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel20: TppLabel;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText16: TppDBText;
    ppDBText19: TppDBText;
    ppLabel15: TppLabel;
    ppLabel13: TppLabel;
    ppLabel24: TppLabel;
    ppDBText14: TppDBText;
    ppLabel7: TppLabel;
    ppDBText8: TppDBText;
    ppLine35: TppLine;
    ppDBText3: TppDBText;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDBText11: TppDBText;
    ppDBMemo6: TppDBMemo;
    ppImage1: TppImage;
    ppLabel21: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLabel5: TppLabel;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLabel6: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine12: TppLine;
    ppLabel36: TppLabel;
    ppDBMemo4: TppDBMemo;
    ADOQuery2ENG_NOTE: TStringField;
    ADOQuery1DSDesigner: TStringField;
    BaseInfoppField64: TppField;
    ADOQuery1offcut_qty: TIntegerField;
    DataSource6: TDataSource;
    ADOQuery1StocckName: TStringField;
    InventItemsppField17: TppField;
    procedure Adoquery1AfterOpen(DataSet: TDataSet);
    procedure ppReport1PrintingComplete(Sender: TObject);
  private
    { Private declarations }
    vRkey0025:integer;
    function Get_Rkey0025: integer;
    procedure Set_Rkey0025(const Value: integer);
  public
    { Public declarations }
    property Rkey0025:integer read Get_Rkey0025 write Set_Rkey0025 ;
  end;

var
  FrmReport: TFrmReport;

implementation
uses DmUnit1,common, MainUNIT1;
{$R *.dfm}

procedure TFrmReport.Adoquery1AfterOpen(DataSet: TDataSet);
var
   s, vstr:string;
begin
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;

  with Adoquery2 do
   begin                     //全局参数 25
    close;
    Parameters.ParamByName('vptr').Value := vRkey0025;//FrmMOMag.Adoquery1.fieldbyname('bom_ptr').asinteger;
    open;
   end;

  with Adoquery3 do             //工艺流程 38
   begin
    close;
    Parameters.ParamByName('vptr1').Value := vRkey0025;//FrmMOMag.Adoquery1.fieldbyname('bom_ptr').asinteger;
    open;
   end;

  with Adoquery5 do          //参数  279
   begin
    close;
    Parameters.ParamByName('vptr2').Value := vRkey0025;//FrmMOMag.Adoquery1.fieldbyname('bom_ptr').asinteger;
    open;
   end;


  vstr := '';
  with Adoquery3 do
  while not eof do
   begin
    if vstr = '' then
      vstr := trim(Fieldbyname('dept_name').AsString)
    else
      vstr := vstr + '/' + trim(Fieldbyname('dept_name').AsString);
    next;
   end;
 s:='                     ';
  Adoquery5.open;
  with Adoquery5 do
  while not eof do
   begin
    if Adoquery5.RecNo <= int(Adoquery5.RecordCount / 2 + 0.6) then
     if fieldbyname('rkey').asInteger = 4 then   //无单位
      Memo1.Lines.Add(trim(fieldbyname('parameter_desc').asstring) +
copy(s,1,21-length(trim(Fieldbyname('parameter_desc').asstring)))+
                 Trim(Fieldbyname('parameter_value').asstring))

     else
      Memo1.Lines.Add(trim(fieldbyname('parameter_desc').asstring) +
copy(s,1,21-length(trim(Fieldbyname('parameter_desc').asstring)))+
        Trim(Fieldbyname('parameter_value').asstring) + ' ' +
        Trim(Fieldbyname('unit_code').asstring))
    else
     if fieldbyname('rkey').asInteger = 4 then   //无单位
      Memo2.Lines.Add(trim(fieldbyname('parameter_desc').asstring) +
copy(s,1,21-length(trim(Fieldbyname('parameter_desc').asstring)))+
       Trim(Fieldbyname('parameter_value').asstring))
     else
      Memo2.Lines.Add(trim(fieldbyname('parameter_desc').asstring) +
copy(s,1,21-length(trim(Fieldbyname('parameter_desc').asstring)))+
       Trim(Fieldbyname('parameter_value').asstring) + ' ' +
        Trim(Fieldbyname('unit_code').asstring));
    next;
   end;

 if Adoquery5.RecordCount - 2 * int(Adoquery5.RecordCount / 2) > 0 then
  Memo2.Lines.Add('  ');

  Adoquery2.edit;
  Adoquery2.Fieldvalues['GenParam1'] := Memo1.Text;
  Adoquery2.Fieldvalues['GenParam2'] := Memo2.Text;
  Adoquery2.Fieldvalues['mi_flow'] := vstr;    //流程

//so
end;

function TFrmReport.Get_Rkey0025: integer;
begin
  result := vRkey0025;
end;

procedure TFrmReport.Set_Rkey0025(const Value: integer);
begin
  vRkey0025 := value;
end;

procedure TFrmReport.ppReport1PrintingComplete(Sender: TObject);
begin
dm.ADOQALL2.Edit;
dm.ADOQALL2.FieldByName('printed_by_ptr').asinteger := strtoint(user_ptr) ;
dm.ADOQALL2.Post;
end;

end.
