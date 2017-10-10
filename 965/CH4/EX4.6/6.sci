clc;
clear all;
disp("Initial cooling rate ")
R=25/1000;//m radius of steel ball
rho=7800;//kg/m^3
c=2;//kJ/kg.K
ti=900;// degree C
ta=30;// degree C
tau=1*60;//seconds
h=30;// W/m^2.C

//(t-ta)/(ti-ta)=exp(-h*As*tau/(rho*V*cp))
t=ta+(ti-ta)*exp(-h*3*tau/(rho*R*c*1000));
disp("degree C", t,"temperature t =")
R=ti-t;
disp("C/min",ceil(R),"Rate of cooling =")

