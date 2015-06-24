//chapter16
//example16.14
//page355

Zout=3 // kilo ohm
Ai=200
mi=0.01

Zout_dash=Zout*(1+mi*Ai)

printf("output impedence with negative feedback = %.3f kilo ohm \n",Zout_dash)
