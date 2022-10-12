/*
page 123456783 PagePSFT
{
    Caption = 'PagePSFT';
    PageType = List;
    SourceTable = PSFT;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Station; Rec.Station)
                {
                    ToolTip = 'Specifies the value of the Station field.';
                    ApplicationArea = All;
                }
                field("Monat-Jahr"; Rec."Monat-Jahr")
                {
                    ToolTip = 'Specifies the value of the Monat field.';
                    ApplicationArea = All;
                }
                field("belegte BettenTage "; Rec."belegte BettenTage ")
                {
                    ToolTip = 'Specifies the value of the belegte BettenTage  field.';
                    ApplicationArea = All;
                }
            }
        }
    }



    trigger OnOpenPage()
    begin


        RecPSFT.DeleteAll();
        RecPSFT.Reset();

        if RecStation.FindFirst() then
            repeat
                if RecBelegung.FindFirst() then
                    repeat

                        RecPSFT.Station := RecStation.Station;
                        RecPSFT."Monat-Jahr" := Format(RecBelegung.Datum, 0, '<Month>');

                        if not RecPSFT.Get(RecPSFT.Station, RecPSFT."Monat-Jahr") then
                            RecPSFT.Insert();



                    until RecBelegung.Next() = 0;

            until RecStation.Next() = 0;

        RecPSFT.Reset();
        RecBelegung.Reset();
        RecStation.Reset();


        // Betten nach Station zaehlen und in Psft speichern
        if RecBelegung.FindFirst() then
            repeat
                Monat := Format(RecBelegung.Datum, 0, '<Month>');
                RecStation.Get(RecBelegung.Bettid);
                Station2 := RecStation.Station;
                RecPSFT.Get(Station2, Monat);
                RecPSFT."belegte BettenTage " := RecPSFT."belegte BettenTage " + 1;
                RecPSFT.Modify();

            until RecBelegung.Next() = 0;
    end;
    /*

        trigger OnOpenPage()
        begin


            RecPSFT.DeleteAll();
            RecPSFT.Reset();

            if RecStation.FindFirst() then
                repeat
                    if RecBelegung.FindFirst() then
                        repeat

                            RecPSFT.Station := RecStation.Station;
                            RecPSFT."Monat-Jahr" := Format(RecBelegung.Datum, 0, '<Month>');

                            if not RecPSFT.Get(RecPSFT.Station, RecPSFT."Monat-Jahr") then
                                RecPSFT.Insert();



                        until RecBelegung.Next() = 0;

                until RecStation.Next() = 0;

            RecPSFT.Reset();
            RecBelegung.Reset();
            RecStation.Reset();


            if RecProzess.FindFirst() then // A100
                repeat
                    // Filter die Tabelle nach dem aktuellen Prozess
                    RecBelegung.SetRange(Prozessid, RecProzess.Prozessid);
                    // Die Transaktionstabelle beinhaltet jetzt nur Datensätze aus dem aktuellen Prozess
                    // Laufe jetzt die Transaktionstabelle durch
                    if RecBelegung.FindFirst() then
                        repeat
                            // Extrahiere Station aus dem aktuellen Datensatz
                            RecBelegungTmp := RecBelegung;
                            RecStation.Get(RecBelegung.Bettid); // NACH BETT SUCHEN 
                            Station2 := RecStation.Station;   // Station von dem Bett finden

                            von := RecBelegung.Datum;
                            Message('von: %1 ', von);
                            if RecBelegung.Next() <> 0 then begin
                                bis := RecBelegung.Datum;
                                Message('bis: %1 ', bis);
                            end
                            else begin
                                // falls ich am Ende der Datensätze bin, dann laufe den letzten Tag
                                bis := von;
                                Message('von: %1 ', von);
                                Message('bis: %1 ', bis);
                            end;

                            for day := von to bis do begin
                                Monat := Format(day, 0, '<Month>');
                                RecPSFT.SetRange("Monat-Jahr", Monat);
                                RecPSFT.SetRange(Station, Station2);
                                if RecPSFT.FindFirst() then begin
                                    RecPSFT."belegte BettenTage " := RecPSFT."belegte BettenTage " + 1;
                                end;
                                RecPSFT.Modify();

                            end;
                            RecBelegung := RecBelegungTmp;

                        until RecBelegung.Next() = 0;
                until RecProzess.Next() = 0;



    */





    /*
            RecStation.SetRange(Station, 'HNO');
            if RecStation.FindFirst() then
                repeat
                    if RecPSFT.FindFirst() then
                        repeat
                            if RecBelegung.FindFirst() then
                                repeat

                                    Monat := Format(RecBelegung.Datum, 0, '<Month>');
                                    if RecPSFT."Monat-Jahr" = Monat then begin
                                        RecBelegung.SetRange(Datum, 20200201D, 20200228D);
                                        von := RecBelegung.GetRangeMin(Datum);
                                        bis := RecBelegung.GetRangeMax(Datum);

                                        Message('%1', bis - von);

                                    end;
                                until RecBelegung.Next() = 0;


                        until RecPSFT.Next() = 0;
                until RecStation.Next() = 0;


    */













    /*




            RecBelegung.SetCurrentKey(Prozessid, LfNr);
            if RecBelegung.FindFirst() then
                repeat

                    tempDatum := Format(RecBelegung.Datum, 0, '<Month>'); // Monat und Jahr 
                    RecStation.Get(RecBelegung.Bettid);                     // filterst nach Bett 
                    tepmStaion := RecStation.Station;                      // Station von dem Bett 
                    RecPSFT.Get(tepmStaion, tempDatum);
                    RecBelegung.SetRange(RecBelegung.Prozessid);
                    RecBelegung.SetRange(Typ, 'Aufnahme');
                    if RecBelegung.FindFirst() then

                    von := RecBelegung.Datum;



                    Message(' von: %1', von);

                    RecBelegung.SetRange(Typ, 'Entlassung');
                    if RecBelegung.FindFirst() then

                    bis := RecBelegung.Datum;
                    Message(' bis: %1', bis);


                    RecPSFT."belegte BettenTage " := bis - von;

                    RecPSFT.Modify();





                until RecBelegung.Next() = 0;








end;


    VAR
        RecStation: Record Bett;
        RecPSFT: Record PSFT;
        RecBelegung: Record Abwesenheit;
        day: Date;
        RecBelegungTmp: Record Abwesenheit;

        tempDatum: Code[12];
        tepmStaion: Code[12];
        von: Date;
        bis: Date;
        temTable: Record Abwesenheit;
        cnt: Integer;
        Monat: Code[10];
        RecProzess: Record Prozess;
        Station2: Code[12];

}
*/