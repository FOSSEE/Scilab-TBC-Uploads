//Exa 1.5
clc;
clear;
close
// given data
A=0.6*0.9;// in square meter
x=.025;// in meter

t_s=310;// in degree C
t_f=15;// in degree C
h=22;// in W/m^2 degree C
K=45;// in W/m degree C
Q_rad=250;// in W
// Heat transfer through the plate = Convection heat loss + radiation heat loss
// Formula Q_cond = Q_conv + Q_rad
// -K*A*dt/dx = h*A*(t_s-t_f)+ Fg12*sigmaA(Ts^4-Ta64)
t_i=x*(h*A*(t_s-t_f)+Q_rad)/(K*A)+t_s;
disp(t_i," The inside plate temperature in degree C is :");
