clear;
clc;
//Example 4.8
b=150;Veb=0.7;
//dc solution
V2=10;
V1=-10;
V_T=0.026;//(V)
Rc=5;
Rb=50;
Re=10;
Ibq=(V2-Veb)/(Rb+(1+b)*Re);
printf('\nbase current=%f mA\n',Ibq)
Icq=b*Ibq;
printf('\ncollector current=%.3f mA\n',Icq)
Ieq=(1+b)*Ibq;
printf('\nemitter current=%.3f mA\n',Ieq)
Vecq=V2-V1-Icq*Rc-Ieq*Re;
printf('\nemitter collector voltage=%.2f V\n',Vecq)
//ac solution
r_pi=b*V_T/Icq;
printf('\nsmall signal resistance=%.1f KOhm\n',r_pi)
g_m=Icq/V_T;
printf('\ntransconductance =%.3fmA/V\n',g_m)
//since Va=infinity,ro=Va/Icq is also infinity
