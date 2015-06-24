//chapter13
//example13.12
//page286

R1=150 // kilo ohm
R2=20 // kilo ohm
Re=2.2 // kilo ohm
Rc=12 // kilo ohm
Vcc=20 // V
Vbe=0.7 // V

V2=Vcc*R2/(R1+R2) // voltage across R2
Ve=V2-Vbe // voltage across Re
Ie=Ve/Re
re_dash=1d-3*25/Ie // in kilo ohm
Av=Rc/re_dash

printf("voltage gain = %.3f \n",Av)

// the accurate answer is 360.642
