//Example 8_5
clc;clear;funcprot(0);
//From Example 8_4
// Given values
P=1;// atm
T=35;// degree celsius
L=300;// m
D=0.267;// m
h_L=20;// m
v_old=0.35;// m^3/s
g=9.81;// m/s^2
//Properties
rho=1.145;// kg/m^3
mu=1.895*10^-5;// kg/m.s
nu=1.655*10^-5;// m^2/s

//Calculation
//V=y(1); Re=y(2); f=y(3);v=y(4)
function[X]=flowrate(y);
    X(1)=real((y(4)/(%pi*D^2/4))-y(1));
    X(2)=real(((y(1)*D)/(nu))-y(2));
    X(3)=real((-2.0*log10(2.51/(y(2)*sqrt(y(3)))))-(1/sqrt(y(3))));
    X(4)=real(((y(3)*L*y(1)^2)/(D*2*9.81))-20);
endfunction
y=[1 10000 0.01 0.1];
z= fsolve(y,flowrate);
v_new=z(4);// m^3/s
v_drop=v_old-v_new;//The drop in the flow rate
printf('The drop in the flow rate through the duct.v_drop=%0.2f m^3/s\n',v_drop);
