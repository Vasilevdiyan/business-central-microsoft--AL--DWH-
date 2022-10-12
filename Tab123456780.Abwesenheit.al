/*
table 123456780 Abwesenheit
{
    Caption = 'Abwesenheit';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; Prozessid; Code[10])
        {
            Caption = 'Prozessid';
            DataClassification = ToBeClassified;
        }
        field(2; LfNr; Code[10])
        {
            Caption = 'LfNr';
            DataClassification = ToBeClassified;
        }
        field(3; Datum; Date)
        {
            Caption = 'Datum';
            DataClassification = ToBeClassified;
        }
        field(4; Typ; Text[15])
        {
            Caption = 'Typ';
            DataClassification = ToBeClassified;
        }
        field(5; Patientid; Text[12])
        {
            Caption = 'Patientid';
            DataClassification = ToBeClassified;
        }
        field(6; Bettid; Text[12])
        {
            Caption = 'Bettid';
            DataClassification = ToBeClassified;
        }
          field(7; Grund; Text[12])
        {
            Caption = 'Grund';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Prozessid,LfNr)
        {
            Clustered = true;
        }
    }
}
*/
