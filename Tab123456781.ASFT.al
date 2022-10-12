/*table 123456781 ASFT
{
    Caption = 'ASFT';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Prozessid; Code[12])
        {
            Caption = 'Prozessid';
            DataClassification = ToBeClassified;
        }
        field(2; Patientid; Code[12])
        {
            Caption = 'Patientid';
            DataClassification = ToBeClassified;
        }
        field(3; von; Date)
        {
            Caption = 'von';
            DataClassification = ToBeClassified;
        }
        field(4; bis; Date)
        {
            Caption = 'bis';
            DataClassification = ToBeClassified;
        }
        field(5; Dauer; Integer)
        {
            Caption = 'Dauer';
            DataClassification = ToBeClassified;
        }
        field(6; "Anzahl Verlegungen"; Integer)
        {
            Caption = 'Anzahl Verlegungen';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Prozessid)
        {
            Clustered = true;
        }
    }
}

*/