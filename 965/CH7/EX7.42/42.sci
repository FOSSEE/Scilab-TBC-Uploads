clc;
clear all;
disp("heat transfer from plate")
L=0.8;//m
U=45;//m/s
ts=300;//degree C
ta=20;// degree C
Re=5*10^5;
k=0.03638;// W/m.C
v=30.08*10^(-6);//m^2/s
Pr=0.682;
xc=Re*v/U;
h=0.664*(k/xc)*Re^0.5*Pr^(1/3);
A=xc*1;
Qlam=h*A*(ts-ta);
disp("W",Qlam,"Heat transfer from laminar portion =")
ReL=U*L/v;
h=0.036*k/(L-xc)*(ReL^0.8-Re^0.8)*Pr^(1/3)
Qturb=h*(0.8-A)*(ts-ta);
disp("W",Qturb,"Heat transfer from turbulent portion =")
Qtotal=Qlam+Qturb;
disp("W",Qtotal,"Heat transfer from both portions =")
h=0.036*k/L*(ReL^0.8)*Pr^(1/3);
Qt=h*L*(ts-ta);
e=(Qt/Qtotal-1)*100;
disp("%",e,"Percentage error =")
