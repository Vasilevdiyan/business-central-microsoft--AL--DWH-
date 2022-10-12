/*page 123456780 PageAbwesenheit
{
    Caption = 'PageAbwesenheit';
    PageType = List;
    SourceTable = Abwesenheit;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Prozessid; Rec.Prozessid)
                {
                    ToolTip = 'Specifies the value of the Prozessid field.';
                    ApplicationArea = All;
                }
                field(LfNr; Rec.LfNr)
                {
                    ToolTip = 'Specifies the value of the LfNr field.';
                    ApplicationArea = All;
                }
                field(Datum; Rec.Datum)
                {
                    ToolTip = 'Specifies the value of the Datum field.';
                    ApplicationArea = All;
                }
                field(Patientid; Rec.Patientid)
                {
                    ToolTip = 'Specifies the value of the Patientid field.';
                    ApplicationArea = All;
                }
                field(Bettid; Rec.Bettid)
                {
                    ToolTip = 'Specifies the value of the Bettid field.';
                    ApplicationArea = All;
                }
                field(Typ; Rec.Typ)
                {
                    ToolTip = 'Specifies the value of the Typ field.';
                    ApplicationArea = All;
                }
                field(Grund; Rec.Grund)
                {
                    ToolTip = 'Specifies the value of the Grund field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
*/