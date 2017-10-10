//chapter16
//example16.17
//page357

Vcc=10 // V
R1= 10 // kilo ohm
R2=10 // kilo ohm
Vbe=0.7 // V
Re=5000 // ohm

V2=Vcc*R2/(R1+R2)
Ve=V2-Vbe
Ie=Ve/(Re/1000) // in mA
re_dash=25/Ie
Av=Re/(re_dash+Re)

printf("voltage gain = %.3f \n",Av)
