clear;
clc;
//Example 5.20
Vtn=0.24;
Kn=1.1;
//x=R1+R2=50000
x=50;
Vgs=0.5;
Vds=2.5;
Vdd=4;
Rd=6.7;
I_D=Kn*(Vgs-Vtn)^2;
printf('\ndrain current=%.3f mA\n',I_D)
Vd=Vdd-I_D*Rd;
printf('\nvoltage at drain=%0.2f V\n',Vd)
Vs=Vd-Vds;
printf('\nvoltage at source =%0.2fV\n',Vs)
Rs=Vs/I_D;
printf('\nsource resistance =%.2fKOhm\n',Rs)
Vg=Vgs+Vs;
printf('\nvoltage at the gate=%.2f V\n',Vg)
//Vg=R2*Vdd/(R2+R1)
R2=Vg*x/Vdd;
printf('\nR2=%0.3f KOhm\n',R2)
R1=x-R2;
printf('\nR1=%0.3f KOhm\n',R1)
Vgs-Vtn
//since Vds>Vgs-Vtn transistor is biased in saturation
