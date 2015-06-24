//chapter16
//example16.13
//page354

Zin=15// kilo ohm
Ai=240
mi=0.015

Zin_dash=Zin/(1+mi*Ai)

printf("input impedence with negative feedback = %.3f kilo ohm \n",Zin_dash)
