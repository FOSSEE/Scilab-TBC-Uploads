//chapter13
//example13.14
//page288

R1=45 // kilo ohm
R2=15 // kilo ohm
Re=7.5 // kilo ohm
Vcc=30 // V
Vbe=0.7 // V
gain_beta=200

V2=Vcc*R2/(R1+R2) // voltage across R2
Ve=V2-Vbe // voltage across Re
Ie=Ve/Re
re_dash=1d-3*25/Ie // in kilo ohm
Zin_base=gain_beta*re_dash
Zin=Zin_base*(R1*R2/(R1+R2))/(Zin_base+R1*R2/(R1+R2))

printf("input impedence of amplifier circuit = %.3f kilo ohm \n",Zin)

// the accurate answer for input impedence is 3.701 kilo ohm but in book it is given as 3.45 kilo ohm
