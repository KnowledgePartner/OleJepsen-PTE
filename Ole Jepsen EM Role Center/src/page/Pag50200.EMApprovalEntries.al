page 50200 "EM Approval Entries"
{
    Caption = 'EM Approval Entriess';
    PageType = CardPart;
    RefreshOnActivate = true;
    SourceTable = "EM Approval Entries Cue PTE";
    ShowFilter = false;

    layout
    {
        area(Content)
        {
            cuegroup("EM Approval")
            {
                field("EM Approval Entries"; Rec."EM Approval Entries")
                {
                    Caption = 'EM Approval Entries';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "CEM Approval Entries";
                    ToolTip = 'Expense Management Approval Entries awaiting approval';
                }
            }

        }
    }

    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;

    end;

}