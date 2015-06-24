//16.6
clc;
El=400;
Eph=El;
Impedance_per_phase= (10^2+15^2)^0.5;
Iph= 400/Impedance_per_phase;
printf("\nPhase current=%.2f A",Iph)
Il=Iph*3^0.5;
printf("\nLine current=%.2f A",I1)
pf=10/Impedance_per_phase;
printf("\nPower factor=%.2f ",pf)
P_total=(3^0.5)*El*Il*pf/1000;
printf("\nTotal Power=%.2f kW",P_total)
VAR=(3^0.5)*El*Il*15/(Impedance_per_phase*1000);
printf("\nReactive volt ampers=%.2f KVAR",VAR)
VA=(3^0.5)*El*Il/1000;
printf("\nTotal Volt ampers=%.2f kVA",VA)