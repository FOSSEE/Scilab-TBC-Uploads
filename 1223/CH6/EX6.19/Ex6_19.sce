clear;
clc;
//Example 6.19
Idss=12;
Vp=-4;
Rl=10;
//lambda=y
y=0.01;
Av=0.9;
//gm=(-2*Idss/Vp)*(1-Vgs/Vp)
gm=2;
Vgs=(1+gm*Vp/(2*Idss))*Vp;
printf('\ngate to source voltage=%.3f V\n',Vgs)
Idq=Idss*(1-Vgs/Vp)^2;
printf('\nquiescent drain current=%.3f mA\n',Idq)
Rs=(-Vgs+10)/Idq;
printf('\nRs=%.2f KOhm\n',Rs)
ro=(1/(y*Idq));
printf('\noutput resistance=%.3f KOhm\n',ro)
x=Rl*ro/(Rl+ro);
t=x*Rs/(x+Rs);
Av=gm*t/(1+gm*t);
printf('\nsmall signal voltage gain=%.3f \n',Av)
