//chapter16
//example16.19
//page359

Vcc=10 // V
R1= 10 // kilo ohm
R2=10 // kilo ohm
Vbe=0.7 // V
Re=4.3 // kilo ohm
gain_beta=200

V2=Vcc*R2/(R1+R2)
Ve=V2-Vbe
Ie=Ve/Re
re_dash=25/Ie
Re_dash=Re*Rl/(Re+Rl)
Zin_base=gain_beta*(re_dash+Re_dash)
Zin=Zin_base*(R1*R2/(R1+R2))/(Zin_base+R1*R2/(R1+R2))

printf("input impedence = %.3f kilo ohm \n",Zin)

// the accurate answer is 4.996 kilo ohm but in book it is given as 4.96 kilo ohm
