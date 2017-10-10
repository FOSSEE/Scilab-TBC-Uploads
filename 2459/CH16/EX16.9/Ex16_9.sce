//chapter16
//example16.9
//page351

Av=10000
R1=10 // kilo ohm
R2=90 // kilo ohm
Zin=10 // kilo ohm
Zout=100d-3 // kilo ohm

mv=R1/(R1+R2)
Avf=Av/(1+Av*mv)
Zin_dash=(1+Av*mv)*Zin
Zout_dash=Zout/(1+Av*mv)

printf("feedbackfraction  = %.1f \n",mv)

printf("voltage gain with negative feedback = %.1f \n",Avf)

printf("input impedence with feedback = %.3f kilo ohm or %.3f mega ohm \n",Zin_dash,Zin_dash/1000)

printf("output impedence with feedback = %f kilo ohm or %.3f ohm \n",Zout_dash,Zout_dash*1000)
