clc;
clear all;
disp("Heat loss from wing")
U=450*1000/3600//m/s
L=6;//m
B=1.2;//m
p=1.013*65/76*10^5;//Pa
R=287;
k=0.2511;//W/m.C
v=14.16*10^(-6);//m^2/s
Pr=0.705;
ta=10;//degree C
rho=p/(R*(ta+273));//kg/m^3
ReL=U*B/v;
Rec=5*10^5;
xc=Rec*v/U;//m
Nu=(0.036*ReL^0.8-836)*Pr^(1/3);
h=Nu*k/B;
A=L*B;
delT=19-1;//degree C
Q=h*A*delT;//W
disp("W",Q,"Heat loss from wing =")
Cf=(0.072/ReL^0.2-1670/ReL);
Fd=Cf*0.5*rho*A*U^2;
disp("N",Fd,"Drag force on the wing =")

