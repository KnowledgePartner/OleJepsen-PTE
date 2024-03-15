table 50200 "EM Approval Entries Cue PTE"
{
    fields
    {
        field(1; "Primary Key"; Code[10])
        {

        }
        field(10; "EM Approval Entries"; Integer)
        {
            Caption = 'Approval Entries';
            FieldClass = FlowField;
            CalcFormula = count("CEM Approval Entry" where("Approver ID" = filter(Database::User), Status = filter(Open)));
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