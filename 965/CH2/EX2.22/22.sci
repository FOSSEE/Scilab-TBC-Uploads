clc;
clear all;
disp("upper surface temperature")
thf=1020;// temperature of hot gases
L=1.2*10^(-3);// thickness of blade
k=12;//W/(m*C)
A=1;// area
hhf=2750;//W/(m^2*C) heat transfer coefficients
hcf=1400;//W/(m^2*C) heat transfer coefficients
t1=900;// temperature of the upper surface
Q=hhf*A*(thf-t1);//W/m^2 rate of heat transfer per unit area
disp ("W/m^2",Q,"rate of heat transfer per unit area = ")
//Q=k*A*(t1-t2)/L;
t2=t1-(Q*L/(k*A));
disp("degree C",t2,"t2 is =")
//Q=hcf*A*(t2-tcf)
tcf=t2-(Q/(hcf*A));
disp("degree C",tcf,"tcf is =")





