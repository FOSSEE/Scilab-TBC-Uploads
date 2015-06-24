//EX10_17 PG-10.65
clc
disp("Refer to the figure-10.59 shown")
Rf=10e3;//feedback resistance
R1=10e3;
R2=20e3;
R3=30e3;
R4=40e3;
V1=-1;//first input voltage at the inverting terminal
V2=2;//second input voltage at the  inverting terminal
V3=3;//third input voltage at the inverting terminal
V4=-2;//fourth input voltage at the inverting terminal
Vo=-(Rf/R1*V1+Rf/R2*V2+Rf/R3*V3+Rf/R4*V4);//output voltage
printf("\n Therefore output voltage is Vo=%.1f V \n",Vo)

