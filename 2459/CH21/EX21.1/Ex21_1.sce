//chapter21
//example21.1
//page456

Vcc=10 // V
Vbe=0.7 // V
Rb=47d3 // ohm
Rc=1d3 // ohm
gain=100

Ic_sat=Vcc/Rc
Ib=Ic_sat/gain
V_plus=Ib*Rb+Vbe

printf("voltage required to saturate transistor = +%.3f V \n",V_plus)
