#include <GUIConstantsEx.au3>

; Crear la ventana principal
GUICreate("JG Calculator", 250, 300)

; Crear el campo de texto
$input = GUICtrlCreateInput("", 10, 10, 230, 40)

; Crear los botones numéricos
$btn1 = GUICtrlCreateButton("1", 10, 60, 50, 50)
$btn2 = GUICtrlCreateButton("2", 70, 60, 50, 50)
$btn3 = GUICtrlCreateButton("3", 130, 60, 50, 50)
$btn4 = GUICtrlCreateButton("4", 10, 120, 50, 50)
$btn5 = GUICtrlCreateButton("5", 70, 120, 50, 50)
$btn6 = GUICtrlCreateButton("6", 130, 120, 50, 50)
$btn7 = GUICtrlCreateButton("7", 10, 180, 50, 50)
$btn8 = GUICtrlCreateButton("8", 70, 180, 50, 50)
$btn9 = GUICtrlCreateButton("9", 130, 180, 50, 50)
$btn0 = GUICtrlCreateButton("0", 70, 240, 50, 50)

; Crear botones de operación
$btnPlus = GUICtrlCreateButton("sumar", 190, 60, 50, 50)
$btnMinus = GUICtrlCreateButton("restar", 190, 120, 50, 50)
$btnMult = GUICtrlCreateButton("multiplicar", 190, 180, 50, 50)
$btnDiv = GUICtrlCreateButton("dividir", 190, 240, 50, 50)
$btnEqual = GUICtrlCreateButton("igual", 130, 240, 50, 50)
$btnClear = GUICtrlCreateButton("borrar", 10, 240, 50, 50)

; Mostrar la ventana
GUISetState(@SW_SHOW)

; Variable para almacenar la entrada
Global $currentInput = ""

; Bucle principal
While 1
    $msg = GUIGetMsg()

Select
        Case $msg = $GUI_EVENT_CLOSE
            ExitLoop
        Case $msg = $btn1
            GUICtrlSetData($input, GUICtrlRead($input) & "1")
        Case $msg = $btn2
            GUICtrlSetData($input, GUICtrlRead($input) & "2")
        Case $msg = $btn3
            GUICtrlSetData($input, GUICtrlRead($input) & "3")
        Case $msg = $btn4
            GUICtrlSetData($input, GUICtrlRead($input) & "4")
        Case $msg = $btn5
            GUICtrlSetData($input, GUICtrlRead($input) & "5")
        Case $msg = $btn6
            GUICtrlSetData($input, GUICtrlRead($input) & "6")
        Case $msg = $btn7
            GUICtrlSetData($input, GUICtrlRead($input) & "7")
        Case $msg = $btn8
            GUICtrlSetData($input, GUICtrlRead($input) & "8")
        Case $msg = $btn9
            GUICtrlSetData($input, GUICtrlRead($input) & "9")
        Case $msg = $btn0
            GUICtrlSetData($input, GUICtrlRead($input) & "0")
        Case $msg = $btnPlus
            GUICtrlSetData($input, GUICtrlRead($input) & "+")
        Case $msg = $btnMinus
            GUICtrlSetData($input, GUICtrlRead($input) & "-")
        Case $msg = $btnMult
            GUICtrlSetData($input, GUICtrlRead($input) & "*")
        Case $msg = $btnDiv
            GUICtrlSetData($input, GUICtrlRead($input) & "/")
        Case $msg = $btnClear
            GUICtrlSetData($input, "")
        Case $msg = $btnEqual
            $result = Execute(GUICtrlRead($input))
            GUICtrlSetData($input, $result)
    EndSelect
WEnd

; Cerrar la GUI
GUIDelete()
