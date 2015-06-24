clear;
clc;
//Example 7.5
b=100;
Vbe=0.7;
Rs=500;
Rb=100000;
Re=10000;
Rl=10000;
Va=120;
Ccc2=1*10^-6;
Icq=0.838*0.001;
r=3100;//small signal parameter
gm=32.2*0.001;
ro=143000;
x=(r+Rs*Rb/(Rs+Rb))/(1+b);
y=ro*x/(ro+x);
Ro=Re*y/(Re+y);
printf('\noutput resistance of emitter=%.2f Ohm\n',Ro)
Ts=(Ro+Rl)*Ccc2;
printf('\ntime constant=%.2f s\n',Ts)
fL=1/(2*%pi*Ts);
printf('\n3dB frequency=%.2f Hz\n',fL)
