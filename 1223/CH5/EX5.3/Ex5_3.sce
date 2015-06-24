clear;
clc;
//Example 5.3
R1=30;
R2=20;
RD=20;
Vdd=5;
Vtn=1;
Kn=0.1;
Vgs=R2*Vdd/(R1+R2);
printf('\nVgs=%0.2f V\n',Vgs)
I_D=Kn*(Vgs-Vtn)^2;
printf('\nthe drain current=%0.1f mA\n',I_D)
Vds=Vdd-I_D*RD;
printf('\ndrain to source voltage=%0.1f V\n',Vds)
