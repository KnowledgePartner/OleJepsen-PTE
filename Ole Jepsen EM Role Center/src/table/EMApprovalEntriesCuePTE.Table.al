table 50200 "EM Approval Entries Cue PTE"
{
    ObsoleteState = Removed;
    ObsoleteReason = 'Removed';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {

        }
        field(10; "EM Approval Entries"; Integer)
        {
            CaptionML = ENU = 'Approval Entries', DAN = 'Expense Godkendelsesposter';
            FieldClass = Normal;
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}