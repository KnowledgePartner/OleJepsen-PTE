pageextension 50201 "CDC Appr. RC EM Appr. Cue PTE" extends "CDC Approver Role Center"
{
    layout
    {
        addafter(ApprovalActivities)
        {
            part(EMApprovalEntries; "EM Approval Entries PTE")
            {
                ApplicationArea = All;
            }
        }
    }
}