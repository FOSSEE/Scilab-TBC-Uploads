//EX10_19 PG-10.66
clc
Rf=60e3;//feedback resistance
R1=10e3;
R2=20e3;
R3=30e3;
V1=-1;//first input voltage at the inverting terminal
V2=-2;//second input voltage at the  inverting terminal
V3=3;//third input voltage at the inverting terminal
Vo=-(Rf/R1*V1+Rf/R2*V2+Rf/R3*V3);//output voltage
printf("\n Therefore output voltage is Vo= %.0f V \n",Vo)
