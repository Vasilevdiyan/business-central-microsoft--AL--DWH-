/*table 123456782 Bett
{
    Caption = 'Bett';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Bettid; Code[12])
        {
            Caption = 'Bettid';
            DataClassification = ToBeClassified;
        }
        field(2; Station; Code[12])
        {
            Caption = 'Station';
            DataClassification = ToBeClassified;
        }
        field(3; Erstellung; Date)
        {
            Caption = 'Erstellung';
            DataClassification = ToBeClassified;
        }
        field(4; Abbau; Date)
        {
            Caption = 'Abbau';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Bettid)
        {
            Clustered = true;
        }
    }
}
*/