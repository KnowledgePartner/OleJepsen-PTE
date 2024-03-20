pageextension 50200 "CDC RC EM Appr. Cue PTE" extends "CDC Doc. Capture Role Center"
{
    layout
    {
        addafter(ApprovalEntriesByApprover)
        {
            part(EMApprovalEntries; "EM Approval Entries PTE")
            {
                ApplicationArea = All;
            }
        }
    }
}