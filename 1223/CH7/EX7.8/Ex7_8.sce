clear;
clc;
//Example 7.8
Re=4;
Rc=2;
Rs=0.5;
Vt=0.026;
Ce=1*10^-3;
V1=5;
Icq=1.06;
V2=-5;
b=100;
Vbe=0.7;
gm=Icq/Vt;
printf('\ntransconductance =%.2fmA/V\n',gm)
r=b*Vt/Icq;
printf('\ndiffusion resistance=%.2f KOhm\n',r)
Ta=Re*Ce;
printf('\ntime constant Ta=%ef s\n',Ta)
Tb=(Re*Ce*(Rs+r))/(Rs+r+(1+b)*Re);
printf('\ntime constant Tb=%e s\n',Tb)
fA=1/(2*%pi*Ta);
printf('\ncorner frequency =%.2fHz\n',fA)
Tb=2.9*0.01;//msec
fB=1/(2*%pi*Tb);
printf('\ncorner frequency =%.2fkHz\n',fB)
Av=(gm*r*Rc)/(Rs+r+(1+b)*Re);
printf('\nlimiting low frequency horizontal asymptote=%.2f\n',Av)
Av=gm*r*Rc/(Rs+r);
printf('\nnlimiting high frequency horizontal asymptote=%.2f\n',Av)
