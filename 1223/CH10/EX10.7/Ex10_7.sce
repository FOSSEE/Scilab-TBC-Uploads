clear;
clc;
//Example 10.7
//uox*Cox/2=x
x=20*10^-6;//A/V^2
Vtn=1;
V1=5;
V2=0;
Iref=0.25*10^-3;
Io=0.1*10^-3;
Vgs2=1.85;
//let y=W/L
y2=Io/(x*(Vgs2-Vtn)^2);
printf('\nwidth per length 2=%.2f\n',y2)
y1=Iref/(x*(Vgs2-Vtn)^2);
printf('\nwidth per length 1=%.2f\n',y1)
Vgs1=Vgs2;
Vgs3=V1-V2-Vgs1;
printf('\nVgs3=%.2f V\n',Vgs3)
y3=Iref/(x*(Vgs3-Vtn)^2);
printf('\nwidth per length 3=%.2f\n',y3)
