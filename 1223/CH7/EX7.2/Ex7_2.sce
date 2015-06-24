clear;
clc;
//Example 7.2
Rs=1000;
Rp=10000;
Cs=1*10^-6;
Cp=3*10^-12;
Ts=(Rs+Rp)*Cs;
printf('\nopen circuit time constant=%.3f s\n',Ts)
Rs=1;//KOhm
Rp=10;//KOhm
Cp=3;//pF
Tp=Cp*Rs*Rp/(Rs+Rp);
printf('\nshort circuit time constant=%.3f ns\n',Tp)
fL=1/(2*%pi*Ts);
printf('\ncorner frequency fL=%.2f Hz\n',fL)
Tp=2.73*10^-3;//microsec
fH=1/(2*%pi*Tp);
printf('\ncorner frequency fH=%.3f MHz\n',fH)
fL=14.5*10^-6;//MHz
fbw=fH-fL;
printf('\nbandwidth =%.3fMHz\n',fbw)
