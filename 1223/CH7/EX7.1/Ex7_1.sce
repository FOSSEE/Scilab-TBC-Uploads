clear;
clc;
//Example 7.1
Rs=1000;
Rp=10000;
Cs=1*10^-6;
Cp=3*10^-12;
Ts=(Rs+Rp)*Cs;
printf('\ntime constant=%.3f s\n',Ts)
f=1/(2*%pi*Ts);
printf('\ncorner frequency=%.2f Hz\n',f)
x=20*log10(Rp/(Rp+Rs));
printf('\nmaximum magnitude =%.3fdB\n',x)
Rp=10;//KOhm
Rs=1;//Kohm
Cp=3;//pF
Tp=Cp*Rs*Rp/(Rs+Rp);
printf('\ntime constant=%.3f ns\n',Tp)
Tp=2.73*10^-3;//micro sec
f=1/(2*%pi*Tp);
printf('\ncorner frequency =%.2fMHz\n',f)
