/*page 123456784 PageProzess
{
    Caption = 'PageProzess';
    PageType = List;
    SourceTable = Prozess;
    
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
            }
        }
    }
}
*/