/*page 123456782 PageBett
{
    Caption = 'PageBett';
    PageType = List;
    SourceTable = Bett;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Bettid; Rec.Bettid)
                {
                    ToolTip = 'Specifies the value of the Bettid field.';
                    ApplicationArea = All;
                }
                field(Station; Rec.Station)
                {
                    ToolTip = 'Specifies the value of the Station field.';
                    ApplicationArea = All;
                }
                field(Erstellung; Rec.Erstellung)
                {
                    ToolTip = 'Specifies the value of the Erstellung field.';
                    ApplicationArea = All;
                }
                field(Abbau; Rec.Abbau)
                {
                    ToolTip = 'Specifies the value of the Abbau field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
*/