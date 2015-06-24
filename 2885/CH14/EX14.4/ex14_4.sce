//Design an adder circuit using an op amp
clear;
clc;
//soltion
//given

//Vo=-(V1+10*V2+100*V3)
Rf=100*10^3;//ohm
C1=1;         //coefficient of V1
C2=10;         //coefficient of V2
C3=100;         //coefficient of V3
R1=Rf/C1;
R2=Rf/C2;
R3=Rf/C3;
printf("R1 = %.0f kΩ\n",R1/1000);
printf("R2 = %.0f kΩ\n",R2/1000);
printf("R3 = %.0f kΩ\n",R3/1000);
