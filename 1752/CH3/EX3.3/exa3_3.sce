//Exa 3.3
clc;
clear;
close;
//given data
format('v',9);
t=1;// in mm
t=t*10^-3;// in meter
L= 10;// in mm
L= L*10^-3;// in meter
k= 380;// W/mK
To= 230;// in °C
T_inf= 30;// in °C
h= 40;// in W/m^2K
B= 1;// in meter
Ac= B*t;// in m^2
rho= 2*(B+t);
m= sqrt(h*rho/(k*Ac));
// Part(a)
nita= tanh(m*L)/(m*L)*100;// fin efficiency in %
disp(nita,"Fin efficiency in %");

// Part(b)
N=1000/9+1;// number of fin
Af= N*rho*L;// in square meter
A1= 1;// plate area in m^2
A2= N*1*1*10^-3;// Area where fins are attached in square meter
Au= A1-A2;// in square meter
q_T= N*sqrt(h*rho*k*Ac)*(To-T_inf)*tanh(m*L)+Au*h*(To-T_inf);// in W/m^2
disp(q_T*10^-3,"Total heat transfer per square meter of plane wall surface in kW/m^2")

// Part(c)
A=1*1;// in m^2
q= h*A*(To-T_inf);// in W/m^2
disp(q*10^-3,"Heat transfer if there were no fins attached in kW/m^2")

// Note : Answer of part(b) in the book is wrong




