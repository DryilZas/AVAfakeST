; AVAfakeST 0.1 Alpha
; Dr.Yil's Software

Opt("TrayMenuMode", 1)

Local $exititem = TrayCreateItem("Salir")
Local $toggle = 0
Local $timelag = 5000
Local $timerot = 150

TraySetIcon("res/AvastUI_145.ico")
TraySetToolTip("AVAST")

While 1
    Local $msg = TrayGetMsg()
    Select
        Case $msg = 0
            If $toggle = 0 Then
  		Sleep($timelag)
                $toggle = 1
	    Else
                For $i = 145 To 154 Step +1
		    Sleep($timerot)
		    TraySetIcon("res/AvastUI_"&$i&".ico")
		Next
		Sleep($timerot)
		TraySetIcon("res/AvastUI_145.ico")
                $toggle = 0
            EndIf
        Case $msg = $exititem
            ExitLoop
    EndSelect
WEnd

Exit
