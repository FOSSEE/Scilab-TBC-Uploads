clear;
clc;

//Example4.10[Cooling of a Long Cylinder by Water]
Ti=200;//Initial Temperature of aluminium cylinder[degree Celcius]
Tf=15;//Temperature of water in which cylinder is kept[degree Celcius]
h=120;//Heat transfer Coefficent[W/m^2.degree Celcius]
t=5*60;//[seconds]
//Properties of aluminium at room temperature
k=237;//Thermal conductivity[W/m.degree Celcius]
a=9.71*(10^(-5));//Thermal diffusivity[m^/s]
r=0.1;//Radius of cylinder[m]
x=0.15;//[m]
//Solution:-
Bi=(h*r)/k;//Biot number
//Corresponding to this biot no coefficients for a cylinder
lambda=0.3126,A=1.0124;
tau=(a*t)/(r^2);
//Using one term approximation
theta0=A*exp(-(lambda^2)*tau);
neta=x/(2*sqrt(a*t));
u=(h*sqrt(a*t))/k;
v=(h*x)/k;
w=(u^2);
theta_semiinfinite=1-erfc(neta)+(exp(v+w)*erfc(neta+u));
theta=theta_semiinfinite*theta0;
T_x_t=Tf+(theta*(Ti-Tf));//[degree Celcius]
disp("degree Celcius",ceil (T_x_t),"the temperature at the center of the cylinder 15cm from the exposed bottom surface")