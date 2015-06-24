clear;
clc;
//Example 16.5
Voh=4.2;
Vol=0.1;
//x=Kd/Kl
x=25.1;
Vdd=5;
Vtnl=0.8;
Vohu=4.2;
Vil=0.8;
Vtnd=0.8;
Vih=Vtnd+(Vdd-Vtnl)/x*((1+2*x)/sqrt(1+3*x)-1);
printf('\nVih=%.2f V\n',Vih)
Volu=(Vdd-Vtnl+x*(Vih-Vtnd))/(1+2*x);
printf('\noutput voltage corresponding to Vih=%.3f V\n',Volu)
NMl=Vil-Volu;
printf('\nnoise margin=%0.3f V\n',NMl)
NMh=Vohu-Vih;
printf('\nnoise margin=%.3f V\n',NMh)
