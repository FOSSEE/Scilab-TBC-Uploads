clc;
clear all;
disp("heat transfer rate")
ta=30;//degree C
U=2.2;//m/s
v=18.97*10^(-6);// m^2/s
ts=90;// degree C
L=900/1000;//m
B=0.45;//m
Pr=0.696;
k=0.02894;//W/m.C
rho=1.06;//kg/m^3
mu=7.211;//kg/hm
disp("i) Heat transfer rate from first half of the plate")
// for first half of the plate,
x=L/2;
Rex=U*x/v;
if(Rex<5*10^5)
disp("Flow is laminar")
end
Nux=0.332*(Rex^0.5)*Pr^(1/3);
hx=Nux*k/x;
ha=2*hx;// average heat transfer rate
Qx=ha*x*B*(ts-ta);//W
disp("W",Qx,"Heat transfer rate from first half of the plate, Qx =")
disp("ii) heat transfer from full plate")
// for full plate
x=L;
ReL=U*x/v;
NuL=0.664*ReL^0.5*Pr^(1/3);
h=NuL*k/x;
QL=h*L*B*(ts-ta);//W
disp("W",QL,"Heat transfer rate from entire plate QL =")
disp("iii) heat transfer rate from next half of the plate")
Q=QL-Qx;
disp("W",Q,"heat transfer rate from next half of the plate Q =")
