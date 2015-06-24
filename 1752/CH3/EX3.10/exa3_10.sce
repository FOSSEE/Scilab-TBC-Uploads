//Exa 3.10
clc;
clear;
close;
//given data
L=0.12;// in meter
t=.15*10^-2;// thickness in m
K=55.5;// in W/mK
h=23.5;// in W/mK
T_L=357;// in K
T_0=313;// in K

// Formula m=sqrt(h*rho/(K*A)) and rho=%pi*d and A=%pi*d*t, putting value of rho and A
m=sqrt(h/(K*t));
mL=m*L;
mL=floor(mL);
// Formula (T_L-T_infinite)/(T_0-T_infinite)= 1/cosh(m*L)
T_infinite=(T_L-T_0/cosh(mL))/(1-1/cosh(mL));
T_infinite=ceil(T_infinite);
measurement_error=T_infinite-T_L;
disp("Measurement Error is : "+string(measurement_error)+" K")

// Note: In the book, Unit of answer is wrong