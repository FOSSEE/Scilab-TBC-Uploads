clear;
clc;
//Example 5.13
Kn1=0.2;
Kn2=0.1;
Kn3=0.1;
Kn4=0.1;
Vtn1=1;
Vtn2=1;
Vtn3=1;
Vtn4=1;
V2=-5;
Vgs3=(sqrt(Kn4/Kn3)*(-V2-Vtn4)+Vtn3)/(1+sqrt(Kn4/Kn3));
printf('\nVgs3=%.2f V\n',Vgs3)
Iq=Kn3*(Vgs3-Vtn3)^2;
printf('\nbias current=%.3f mA\n',Iq)
Vgs1=sqrt(Iq/Kn1)+Vtn1;
printf('\ngate to source voltage on M1=%.2f V\n',Vgs1)
Vds2=-V2-Vgs1;
printf('\ndrain to source voltage on M2=%.2f V\n',Vds2)
Vgs2=Vgs3;
Vdssat=Vgs2-Vtn2
//since Vds2>Vdssat M2 is biased in saturation region
