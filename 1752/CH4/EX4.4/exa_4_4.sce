//Exa 4.4
clc;
clear;
close;
//given data
k=8;// in W/mK
alpha=4*10^-6;// in m^2/s
h=50;// in W/m^2K
D=6*10^-3;// in m
R=D/2;
T=0.5;// where T = (t-t_infinite)/(t_i-t_infinite)
//l_s= V/A = R/3
l_s= R/2;// in m
Bi= h*l_s/k;
// since Bi < 0.1 , hence lumped heat capacity analysis can be applied
// toh= rho*V*C/(h*A) = rho*C*l_s/h = k*l_s/(h*alpha)
toh=  k*l_s/(h*alpha);// in seconds
disp(toh,"time constant in seconds");
// It is given that (t-t_infinite)/(t_i-t_infinite) = 0.5 =  %e^(-h*A*c /(rho*V*C)) = %e^(-h*c/(rho*l_s*C)) = %e^(-h*alpha*c/(l_s))
// or (t-t_infinite)/(t_i-t_infinite) = %e^(-h*alpha*c/(l_s);
c= -log(T)*l_s/(h*alpha);// in sec
disp(c,"The time required to temperature change to reach half of its initial value in seconds");

