/*page 123456781 PageASFT
{
    Caption = 'PageASFT';
    PageType = List;
    SourceTable = ASFT;

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
                field(Patientid; Rec.Patientid)
                {
                    ToolTip = 'Specifies the value of the Patientid field.';
                    ApplicationArea = All;
                }
                field(von; Rec.von)
                {
                    ToolTip = 'Specifies the value of the von field.';
                    ApplicationArea = All;
                }
                field(bis; Rec.bis)
                {
                    ToolTip = 'Specifies the value of the bis field.';
                    ApplicationArea = All;
                }
                field(Dauer; Rec.Dauer)
                {
                    ToolTip = 'Specifies the value of the Dauer field.';
                    ApplicationArea = All;
                }
                field("Anzahl Verlegungen"; Rec."Anzahl Verlegungen")
                {
                    ToolTip = 'Specifies the value of the Anzahl Verlegungen field.';
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin

        RekASFT.DeleteAll();
        RekASFT.Reset();



        if RekAbw.FindFirst() then
            repeat
                RekASFT.Prozessid := RekAbw.Prozessid;
                RekASFT.Patientid := RekAbw.Patientid;

                // RekASFT.SetRange(Prozessid, RekASFT.Prozessid);
                // RekASFT.SetRange(Patientid, RekASFT.Patientid);
                if not RekASFT.Get(RekASFT.Prozessid) then
                    RekASFT.Insert(true);

            until RekAbw.Next() = 0;




        RekASFT.Reset();
        RekAbw.Reset();


        if RekASFT.FindFirst() then
            repeat

                RekAbw.SetRange(Prozessid, RekASFT.Prozessid);
                RekAbw.SetRange(Typ, 'Aufnahme');
                if RekAbw.FindFirst() then begin
                    RekASFT.von := RekAbw.Datum;
                end;

                RekAbw.Reset();


                RekAbw.SetRange(Prozessid, RekASFT.Prozessid);
                RekAbw.SetRange(Typ, 'Entlassung');
                if RekAbw.FindFirst() then begin
                    RekASFT.bis := RekAbw.Datum;
                end;

                RekASFT.Dauer := RekASFT.bis - RekASFT.von;

                RekAbw.Reset();

                RekAbw.SetRange(Prozessid, RekASFT.Prozessid);
                RekAbw.SetRange(Typ, 'Verlegung');
                if RekAbw.FindFirst() then begin
                    RekASFT."Anzahl Verlegungen" := RekAbw.Count();
                end;

                // RekASFT.Dauer := RekASFT.bis - RekASFT.von;

                RekASFT.Modify();

            until RekASFT.Next() = 0;







    end;

    var
        RekASFT: Record ASFT;
        RekAbw: Record Abwesenheit;




}
*/