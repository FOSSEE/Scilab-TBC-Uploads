//chapter16
//example16.8
//page351

Av=10000
R1=2 // kilo ohm
R2=18 // kilo ohm
Vi=1 // mV

mv=R1/(R1+R2)
Avf=Av/(1+Av*mv)
Vout=Avf*Vi

printf("feedback fraction  = %.1f \n",mv)

printf("voltage gain with negative feedback = %.1f \n",Avf)

printf("output voltage = %.1f mV \n",Vout)
