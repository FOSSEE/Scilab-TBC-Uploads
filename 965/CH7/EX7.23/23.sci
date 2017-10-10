clc;
clear all;
disp("boundary layer thickness")
ta=20;//degree C
U=4.5;//m/s
v=16.96*10^(-6);// m^2/s
ts=60;// degree 
Pr=0.699
k=0.02755;//W/m.C
rho=1.128;//kg/m^3
Re=5*10^5;
xc=Re*v/U;//m distance from the leading edge at which the flow in boundary layer changes from laminar to turbulent
del=4.64*xc/Re^0.5;//m
disp("mm",del*1000,"Thickness of hydrodynamic layer =")
delth=del/Pr^(1/3);
disp("mm",delth*1000,"Thermal boundary layer =")
Nuc=0.332*Re^0.5*Pr^(1/3);
hc=Nuc*k/xc;
disp("W/m^2.C",hc,"local heat transfer coefficient =")
h=2*hc;//Average heat transfer coefficient
disp("W/m^2.C",h,"average heat transfer coefficient =")
As=1.88*1;
Q=h*2*As*(ts-ta);// W
disp("W",Q,"Heat transfer rate from both sides for, unit width of the plate, Q =")
del1=0;//m
del2=del;//m
m=5/8*rho*U*(del2-del1);// kg/s
mh=m*3600;//kg/hr
disp("kg/hr",mh, "Mass entrainment in boundary layer =")
Cfx=0.646/Re^0.5;//skin friction coefficient
disp(Cfx, "Skin friction coefficient =")
