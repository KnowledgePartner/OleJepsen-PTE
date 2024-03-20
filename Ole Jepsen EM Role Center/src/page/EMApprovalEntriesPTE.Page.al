page 50201 "EM Approval Entries PTE"
{
    CaptionML = ENU = 'EM Approval Entries', DAN = 'Expense Godkendelsesposter';
    PageType = CardPart;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup("EM Approval")
            {
                CaptionML = ENU = 'Expense Approval', DAN = 'Expense Godkendelse';

                field("EM Approval Entries"; CountEMAppEntries)
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "CEM Approval Entries";
                    ToolTipML = ENU = 'Expense Management Approval Entries awaiting approval', DAN = 'Expense Managmenet godkendelsesposter der afventer godkendelse';
                    CaptionML = ENU = 'EM Approval Entries', DAN = 'EM Godkendelsesposter';

                    trigger OnDrillDown()
                    var
                        CEMAppEntry: Record "CEM Approval Entry";
                        CEMApprovalEntries: Page "CEM Approval Entries";
                        User: text;
                    begin
                        User := UserId;
                        CEMAppEntry.SetRange("Approver ID", User);
                        CEMAppEntry.SetRange(Status, CEMAppEntry.Status::Open);
                        CEMApprovalEntries.SetTableView(CEMAppEntry);
                        CEMApprovalEntries.Run();
                    end;
                }
            }

        }
    }

    trigger OnAfterGetCurrRecord()
    var
        ApprovalEntry: Record "Approval Entry";
        User: text;
    begin
        User := UserId;
        ApprovalEntry.SetRange("Approver ID", User);
        ApprovalEntry.SetRange(Status, ApprovalEntry.Status::Open);
        ApprovalEntry.SetRange("Approval Code", 'EXPENSE');
        CountEMAppEntries := ApprovalEntry.Count();
    end;

    var
        CountEMAppEntries: integer;
}