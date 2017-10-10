//chapter16
//example16.15
//page355

BW=400 // kHz
Ai=250
mi=0.01

BW_dash=BW*(1+mi*Ai)

printf("Bandwidth with negative feedback = %.3f kHz \n",BW_dash)
