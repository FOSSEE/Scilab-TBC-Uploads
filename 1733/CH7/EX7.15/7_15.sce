//7.15
clc;
Rb=7.5;
Ra=0.1;
Kt=1.4;
Ia=120;
If=1.6;
Duty_cycle=0.35;
Vavg=Rb*Ia*(1-Duty_cycle);
printf("Average voltage across chopper=%.0f V", Vavg)
Pb=Rb*Ia^2*(1-Duty_cycle);
printf("\nPower dissipated in breaking resistance=%.0f W", Pb)
Eb=Vavg+Ia*Ra;
w=Eb/(Kt*If);
N=w*60/(2*%pi);
printf("\nSpeed=%.2f rpm", N)