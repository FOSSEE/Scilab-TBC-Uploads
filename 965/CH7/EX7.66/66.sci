clc;
clear all;
disp("heat loss from four surfaces")
U=90*1000/3600;// m/s
ta=50;// degree C
l=10;//m
w=4;//m
h=3;//m
ts=10;// degree C
rho=1.165;// kg/m^3
cp=1005;// J/kg.K
k=.02676;// W/m.C
v=16*10^(-6);// m^2/s
Pr=0.701;
Rel=U*l/v;
Nu=0.036*Rel^0.8*Pr^0.333;
hs=k*Nu/l;
A=2*(w+h)*l;
Ql=hs*A*(ta-ts);//W
Q=Ql/1000;// kQ
disp("W",Q,"Heat loss from surfaces =")
cc=Q*3600/14000;
disp("TR",cc,"Cooling capacity required =")
Cf=0.072/(Rel)^0.2;
Fd=Cf*0.5*rho*A*U^2;
P=Fd*U/1000;
disp("kW",P,"Power required to overcome the resistance =")
