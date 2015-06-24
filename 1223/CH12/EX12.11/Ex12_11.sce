clear;
clc;
//Example 12.11
hFE=100;//transistor parameter
Vbe=0.7;
Vcc=10;
R1=55;
R2=12;
Re=1;
Rc=4;
Rl=4;
Icq=0.983;
Vceq=5.08;
Vt=0.026;
r=hFE*Vt/Icq;
printf('\nsmall signal parameter resistance=%.2f KOhm\n',r)
gm=Icq/Vt;
printf('\ntransconductance=%.3f mA/V\n',gm)
Agf=-gm*(Rc/(Rc+Rl))/(1+Re*(gm+1/r));
printf('\ntransconductance transfer function=%.3f mA/V\n',Agf)
//as first approximation
Agf2=-1/Re;
printf('\nAgf=%.2f mA/V\n',Agf2)
Avf=Agf*Rl;
printf('\nvoltage gain=%.2f\n',Avf)
