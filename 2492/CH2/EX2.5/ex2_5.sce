// Exa 2.5
format('v',6)
clc;
clear;
close;
// Given data
Vp= '[4+0.2*sin(omega*t)]';// in V
Ip= '[4+0.3*sin(omega*t)]';// in mA
//The instantaneous power dissipated, P= Vp*Ip = [4+0.2*sind(wt)]*[4+0.3*sind(wt)] 
// and putting, sin^2(omega*t)= 1/2-1/2*cos(2*omega*t)
P= '[16.03+2*sin(omega*t)-0.03*cos(2*omega*t)]*10^-3';// in W
disp(P,"The instantaneous power dissipated in the diode in W is : ")
// Pmax occurs when omega*t=90, so
omega_t= 90;// in °
Pmax= [16.03+2*sind(omega_t)-0.03*cosd(2*omega_t)]*10^-3;// in W
disp(Pmax,"The maximum value of instantaneous power dissipated in W is : ")
// Pmin occurs when omega*t=-90, so
omega_t= -90;// in °
Pmin= [16.03+2*sind(omega_t)-0.03*cosd(2*omega_t)]*10^-3;// in W
disp(Pmin,"The minimum value of instantaneous power dissipated in W is : ");
// The average power dissipated
Pav=(Pmax+Pmin)/2;// in W
disp(Pav,"The average power dissipated in the diode in W is : ")
