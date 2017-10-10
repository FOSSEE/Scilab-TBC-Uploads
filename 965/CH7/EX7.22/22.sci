clc;
clear all;
disp("Boundary layer thickness")
ta=25;// degree C
U=0.1;//m/s
v=0.65*10^(-4);// m^2/s
ts=95;// degree C
L=4.5;//m
k=0.213;//W/m.C
rho=956.8;//kg/m^3
a=7.2*10^(-8);//m^2/s
disp("i) The hydrodynamic and thermal boundary layer thickness, del, delth")
ReL=U*L/v;// Reynolds number at the end of the plate
del=5*L/ReL^0.5;// hydrodynamic boundary layer thickness
disp("mm",del*1000,"hydrodynamic boundary layer thickness, del =")
Pr=v/a;
delth=del/Pr^(1/3);//Thermal boundary layer thickness according to Pohlhausen
disp("mm",delth*1000,"Thermal boundary layer thickness, del =")
disp("ii) the total drag force per unit width on one side of plate. Fd :")
Cf=1.328/ReL^0.5;
Fd=Cf*(0.5*rho*U^2)*(L*1);// N/m width The drag force
disp("N/m width",Fd,"The drag force, Fd = ")
disp("iii) The total heat transfer coefficient at the trailing edge, hx (x =L)")
Nux=0.332*ReL^0.5*Pr^(1/3);
hx=Nux*k/L;
disp("W/m^2.C",hx, "The total heat transfer coefficient, hx =")
disp("iv) The heat transfer rate")
ha=2*hx;
As=L*1;
Q=ha*As*(ts-ta);//W
disp("W",Q,"Heat transfer rate")
