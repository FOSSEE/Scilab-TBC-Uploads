clc;
clear all;
disp("thickness of insulation")
ti=310;// degree C
t0=45;// degree C
//tair=12 to 32 degree C
k=0.036;//W/(m*C)
h0=12;//W/(m^2*C)
//q=Q/A=(ti-tair)/(L/k+1/h0);
//(ti-tair)/(L/k+1/h0)=(t0-tair)/(1/h0);
//L=(k/h0)*(ti-t0)t/(t0-tair)
disp ("thickness of insulation will be large for tair = 32 degree C")
tair=32;// degree C
L=(k/h0)*(ti-t0)/(t0-tair);
disp("mm",L*1000,"thickness of insulation = ")

