clear;
clc;
//Example 5.6
Vtn=2;
Kn=80*10^-3;
//x=W/L
x=4;
I_D=0.5;
//I_D=Kn*x*((Vgs-Vtn)^2)/2;
Vgs=sqrt(I_D*2/(Kn*x))+2;
printf('\nVgs=%.2f V\n',Vgs)
//y=R1+R2
Rs=2;
y=10/0.05;
printf('\nR1+R2=%.2f Kohm\n',y)
//Vgs=Vg-Vs=(R2/(R1+R2)*10-5)-I_D*Rs+5
R2=(y/10)*(Vgs+I_D*Rs);
printf('\nR2=%.2f KOhm\n',R2)
R1=y-R2;
printf('\nR1=%.2f KOhm\n',R1)
