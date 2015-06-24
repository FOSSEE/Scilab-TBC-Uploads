//Exa 5.3
clc;
clear;
close;
//given data

rho=1.06;// in kg/m^3
K=.0289;
v= 18.97*10^-6;// in m^2/s
Pr=0.696;
V=2.2;// in m/s
L=0.9;// in m
B=0.45;// in m
t_infinite= 30;// in degree C
t_s=90;// in degree C
//(a) For first half of the plate
x=L/2;// in m
Re=V*x/v;
// Nu = h*x/K = 0.664*Re^(1/2)*Pr^(1/3)
h= 0.664*Re^(1/2)*Pr^(1/3)*K/x;// in W/m^2 degree C
A=x*B;
Q1=h*A*(t_s-t_infinite);// in watt
disp(Q1,"Heat transfer rate from first half of the plate in watt");

//(b) Heat transfer from entire plate
x=L;// in m
Re=V*x/v;
// Nu = h*x/K = 0.664*Re^(1/2)*Pr^(1/3)
h= 0.664*Re^(1/2)*Pr^(1/3)*K/x;// in W/m^2 degree C
A=L*B;
Q2=h*A*(t_s-t_infinite);// in watt
disp(Q2,"Heat transfer rate from entire plate in watt");

//(c) From next half of the plate
Q3= Q2-Q1;
disp(Q3,"Heat transfer rate from next half of the plate")




