clear;
clc;
//Example 5.7
Vtn=0.8;
Kn=80;
//x=W/L
x=3;
I_D=250;
Vd=2.5;
//I_D=Kn/2*x*(Vgs-Vtn)^2
Vgs=sqrt(I_D*2/(Kn*x))+Vtn;
printf('\nVgs=%.3f V\n',Vgs)
Vs=-Vgs
//I_D=(5-Vd)/Rd
Rd=(5-Vd)/I_D;
printf('\nRd=%.2f KOhm\n',Rd)
Vds=Vd-Vs;
printf('\nVds=%.2f V\n',Vds)
Vdssat=Vgs-Vtn
//since Vds>Vdssat transistor is biased in saturation region
