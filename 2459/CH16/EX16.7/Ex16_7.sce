//chapter16
//example16.7
//page348

A0=1000
Rout=100 // ohm
Rl=900
mv=1/50

Av=A0*Rl/(Rout+Rl)
Avf=Av/(1+Av*mv)
printf("voltage gain with negative feedback = %.3f \n",Avf)

// the accurate answer is 47.368 but in book it is given as 47.4
