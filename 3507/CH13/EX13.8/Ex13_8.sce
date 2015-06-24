//chapter13
//example13.8
//page282

del_Ib=10d-3 // mA
del_Ic=1 // mA
del_Vbe=0.02 // V
Rc=5 // kilo ohm
Rl=10 // kilo ohm

Ai=del_Ic/del_Ib
Rin=del_Vbe/del_Ib
R_AC=Rc*Rl/(Rc+Rl)
Av=gain_beta*R_AC/Rin
Ap=Av*Ai

printf("current gain = %.3f \n",Ai)
printf("input impedence = %.3f kilo ohm \n",Rin)
printf("ac load = %.3f kilo ohm \n",R_AC)
printf("voltage gain = %.3f \n",Av)
printf("power gain = %.3f \n",Ap)

// the accurate answer for voltage gain = 166.667 and for power gain = 16666.667 but in book they are given as 165 and 16500 respectively.
