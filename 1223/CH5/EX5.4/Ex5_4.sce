clear;
clc;
//Example 5.4
R1=50;
R2=50;
RD=7.5;
Vdd=5;
Vtp=-0.8;
Vg=2.5;
Kp=0.2;
Vo=R2*Vdd/(R1+R2);
printf('\nVo=%.2f V\n',Vo)
Vsg=Vdd-Vg;
printf('\nsource to gate voltage=%.2f V\n',Vsg)
I_D=Kp*(Vsg+Vtp)^2;
printf('\nthe drain current=%.3f mA\n',I_D)
Vsd=Vdd-I_D*RD;
printf('\nsource to drain voltage=%.3f V\n',Vsd)
