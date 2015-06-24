clear;
clc;
//Example 7.10
fT=500;
Ic=1;
b=100;
Vt=0.026;
C2=0.3*10^-12;
fB=fT/b;
printf('\nbandwidth=%.3f MHz\n',fB)
gm=Ic/Vt;
printf('\ntransconductance=%.3f mA/V\n',gm)
fT=500000000;
gm=38.5*0.001;
C1=gm/(fT*2*%pi)-C2;
printf('\ncapacitance =%3.2eF\n',C1)
