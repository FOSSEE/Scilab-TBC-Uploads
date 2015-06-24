clear;
clc;
//Example 5.14
I_D=0.5;
Vds=6;
Kn=80*10^-6;
Vgs=5;
Vtn=1;
//x=W/L
x=I_D*2/(Kn*(Vgs-Vtn)^2);
disp(x,"W/L ")
//maximum power dissipation in transistor 
Pmax=Vds*I_D;
printf('\nmaximum power dissipation in transistor=%.3f W\n',Pmax)
