Sub general()

fila = DATOS.Cells(1, 1)
DATOS.Cells(fila, 1) = FORMULARIO.Cells(7, 6)
DATOS.Cells(fila, 2) = FORMULARIO.Cells(9, 6)
DATOS.Cells(fila, 3) = FORMULARIO.Cells(11, 6)
DATOS.Cells(fila, 4) = FORMULARIO.Cells(13, 6)
DATOS.Cells(fila, 5) = FORMULARIO.Cells(15, 6)
DATOS.Cells(fila, 6) = FORMULARIO.Cells(17, 6)
DATOS.Cells(fila, 7) = FORMULARIO.Cells(19, 6)
DATOS.Cells(fila, 8) = FORMULARIO.Cells(21, 6)
DATOS.Cells(fila, 9) = FORMULARIO.Cells(23, 6)
DATOS.Cells(fila, 10) = FORMULARIO.Cells(25, 6)
DATOS.Cells(fila, 11) = FORMULARIO.Cells(27, 6)
DATOS.Cells(fila, 12) = FORMULARIO.Cells(29, 6)
DATOS.Cells(fila, 13) = FORMULARIO.Cells(31, 6)
DATOS.Cells(fila, 14) = FORMULARIO.Cells(33, 6)
DATOS.Cells(fila, 15) = FORMULARIO.Cells(35, 6)
DATOS.Cells(fila, 16) = FORMULARIO.Cells(37, 6)
DATOS.Cells(fila, 17) = FORMULARIO.Cells(39, 6)
DATOS.Cells(fila, 18) = FORMULARIO.Cells(41, 6)
DATOS.Cells(fila, 19) = FORMULARIO.Cells(43, 6)


MsgBox "FORMULARIO GUARDADO CORRECTAMENTE"

FORMULARIO.Cells(7, 6) = Empty
FORMULARIO.Cells(9, 6) = Empty
FORMULARIO.Cells(11, 6) = Empty
FORMULARIO.Cells(13, 6) = Empty
FORMULARIO.Cells(15, 6) = Empty
FORMULARIO.Cells(17, 6) = Empty
FORMULARIO.Cells(19, 6) = Empty
FORMULARIO.Cells(21, 6) = Empty
FORMULARIO.Cells(23, 6) = Empty
FORMULARIO.Cells(25, 6) = Empty
FORMULARIO.Cells(27, 6) = Empty
FORMULARIO.Cells(29, 6) = Empty
FORMULARIO.Cells(31, 6) = Empty
FORMULARIO.Cells(33, 6) = Empty
FORMULARIO.Cells(35, 6) = Empty
FORMULARIO.Cells(37, 6) = Empty
FORMULARIO.Cells(39, 6) = Empty
FORMULARIO.Cells(41, 6) = Empty
FORMULARIO.Cells(43, 6) = Empty

DATOS.Cells(1, 1) = fila + 1

End Sub