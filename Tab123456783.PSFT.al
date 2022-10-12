/*table 123456783 PSFT
{
    Caption = 'PSFT';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; Station; Code[12])
        {
            Caption = 'Station';
            DataClassification = ToBeClassified;
        }
        field(2; "Monat-Jahr"; Code[12])
        {
            Caption = 'Monat-Jahr';
            DataClassification = ToBeClassified;
        }
        field(3; "belegte BettenTage "; Integer)
        {
            Caption = 'belegte BettenTage ';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Station,"Monat-Jahr")
        {
            Clustered = true;
        }
    }
}
*/