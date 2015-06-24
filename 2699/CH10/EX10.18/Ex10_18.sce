//EX10_18 PG-10.66
clc
Rf=1e6;//feedback resistance
R1=200e3;
R2=250e3;
R3=500e3;
V1=-2;//first input voltage at the inverting terminal
V2=2;//second input voltage at the  inverting terminal
V3=11;//third input voltage at the inverting terminal
Vo=-(Rf/R1*V1+Rf/R2*V2+Rf/R3*V3);//output voltage
printf("\n Therefore output voltage is Vo=%.0f V \n",Vo)
//in the book the output Vo=-20V if the value of V3=11V 
//but in the question the value of V3=1V so
//I have taken V3=11V so that the Vo=-20V 
