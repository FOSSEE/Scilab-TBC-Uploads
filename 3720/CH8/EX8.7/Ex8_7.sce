//Example 8_7
clc;clear;funcprot(0);
//Given values
Z_a=5;// m
Z_b=13;// m
D_1=0.04;
D_2=0.08;// The diameters of the two pipes m
L_1=36;// m
L_2=36;// m
W_elect=8000;// W
n_pump=0.70;
g=9.81;// m/s^2
//Properties
rho=998;// kg/m^3
mu=1.002*10^-3;// kg/m.s
eps=0.000045;// m

//Calculation
// V1=y(1); V2=y(2); Re1=y(3); Re2=y(4); f1=y(5);f2=y(6);h_L1=y(7);h_L2=y(8); h_pump=y(9);v1=y(10);v2=y(11);v=y(12);h_L=y(13)
function[X]=flowrate(y);
    X(1)=real(((rho*y(12)*g*y(9))/n_pump)-W_elect);
    X(2)=real(((y(10)*4)/(%pi*D_1^2))-y(1));
    X(3)=real(((y(11)*4)/(%pi*D_2^2))-y(2));
    X(4)=real(((rho*y(1)*D_1)/(mu))-y(3));
    X(5)=real(((rho*y(2)*D_2)/(mu))-y(4));
    X(6)=real((-2.0*log10(((eps)/(3.7*D_1)))+(2.51/(y(3)*sqrt(y(5)))))-(1/sqrt(y(5))));
    X(7)=real((-2.0*log10(((eps)/(3.7*D_2)))+(2.51/(y(4)*sqrt(y(6)))))-(1/sqrt(y(6))));
    X(8)=real(((y(5)*L_1*(y(1)^2))/(D_1*g*2))-(y(7)));
    X(9)=real(((y(6)*L_2*(y(2)^2))/(D_2*g*2))-(y(8)));
    X(10)=real((y(10)+y(11))-y(12));
    X(11)=real(((Z_b-Z_a)+y(13))-y(9));
    X(12)=real(y(7)-y(13));
    X(13)=real(y(8)-y(13));
endfunction
y=[1 1 100000 100000 0.01 0.01 10 10 10 0.01 0.001 0.01 10];
fr=fsolve(y,flowrate);
printf('The total flow rate between the reservoirs ,v=%0.4f m^3/s\n',fr(12));
printf('The flow rate through pipe 1,v_1=%0.5f m^3/s\n',fr(10));
printf('The flow rate through pipe 2,v_2=%0.4f m^3/s\n',fr(11));
// The answer vary due to round off error
