//example 8.4
clc;funcprot(0);
//Initialization of Variable
V=220;//line voltage
f=50;//hertz
R=80;//load resistance
K=75;//dv/dt
Vd=400;//DRM voltage
pi=3.1428
//calculation
C=Vd/R/K;
disp(C,"minimum value of capacitor in micfoF:")
printf('\nchoose C=.1 micoF')
C1=.1;
Z=1/(2*pi*f*C1);
disp(Z*1000,"capacitor impedence at angle -90degree in ohm:")
Iload=V/1000/(-Z*cos(180*pi/180)+R*round(cos(90*pi/180)));
disp(Iload,"Load current in mA at an angle 90 degrees :");
Vload=Iload/1000*R;
disp(Vload,"Potential drop in V at an angle 90 degrees :")
P=Vload*Iload;
disp(int(P),"Power dissipated in mW :")
clear()
