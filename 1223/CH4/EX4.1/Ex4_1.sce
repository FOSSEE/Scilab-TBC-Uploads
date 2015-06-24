clear;
clc;
//Example 4.1
b=100;
Vcc=12;
Vbe=0.7;
Rc=6;
Rb=50;
Vbb=1.2;
//dc solution
Ibq=(Vbb-Vbe)/Rb;
printf('\nbase current=%.3f mA\n',Ibq)
Icq=b*Ibq;
printf('\ncollector current=%.3f mA\n',Icq)
Vceq=Vcc-Icq*Rc;
printf('\ncollector emitter voltage=%.2f V\n',Vceq)
//transistor is forward biased
//ac solution 
V_T=0.026;//(V)
//small signal hybrid pi parameters
r_pi=b*V_T/Icq;
printf('\nsmall signal resistance=%.1f KOhm\n',r_pi)
g_m=Icq/V_T;
printf('\ntransconductance=%.3f mA/V\n',g_m)
//Av=Vo/Vs=-(g_m*Rc)*r_pi/(r_pi+Rb)
Av=-(g_m*Rc)*r_pi/(r_pi+Rb);
printf('\nsmall signal voltage gain=%.3f\n',Av)
