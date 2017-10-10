//chapter13
//example13.11
//page284

R1=40 // kilo ohm
R2=10 // kilo ohm
Re=2 // kilo ohm
Vcc=10 // V
Vbe=0.7 // V

V2=Vcc*R2/(R1+R2) // voltage across R2
Ve=V2-Vbe // voltage across Re
Ie=Ve/Re
re_dash=25/Ie

printf("ac emitter resistance = %.3f ohm \n",re_dash)
