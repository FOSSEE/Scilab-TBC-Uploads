//Example 8_4
clc;clear;funcprot(0);
// Given values
P=1;// atm
T=35;// degree celsius
L=150;// m
h_L=20;// m
v=0.35;// m^3/s
g=9.81;// m/s^2
//Properties
rho=1.145;// kg/m^3
mu=1.895*10^-5;// kg/m.s
nu=1.655*10^-5;// m^2/s

//Calculation
// V=y(1); Re=y(2); f=y(3);D=y(4)
function[X] = Diameter(y) 
    X(1)=(v/(%pi*(y(4)^2)/4))-y(1);
    X(2)=((y(1)*y(4))/(nu))-y(2);
    X(3)=(-2.0*log10(2.51/(y(2)*sqrt(y(3)))))-(1/sqrt(y(3)));
    X(4)=(y(3)*(L/(y(4))*((y(1)^2)/(2*g))))-h_L;
endfunction
y=[1 100000 0.01 0.1];
z=fsolve(y,Diameter);
V=z(1);// m/s
Re=z(2);// Reynolds number
f=z(3);
D=z(4);// m
printf('The minimum diameter of the duct,D=%0.3f m\n',D);
//The diameter can also be determined directly from the third Swamee–Jain formula to be
y=0;
D=0.66*(((y^1.25*((L*v^2)/(g*h_L))^4.75))+(nu*v^9.4*(L/(g*h_L))^5.2))^0.04;
printf('The diameter can also be determined directly from the third Swamee–Jain formula to be D=%0.3f m\n',D);
