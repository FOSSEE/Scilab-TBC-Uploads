clc;
clear;

printf("\n Example 9.31\n");

o_d=10e-3;//outer diameter of the tube
i_d=8.2e-3; //inner diameter of the tube
h=140;//coeffecient of heat transfer between gas and copper tube
k=350;//Thermal conductivity of copper tube
L=0.075;

b=%pi*o_d;//perimeter of tube
A=%pi/4*(o_d^2-i_d^2);//cross sectional area of the metal
m=((h*b)/(k*A))^0.5;
T_g=((475*cosh(m*L))-365)/(cosh(m*L)-1);
printf("\n The gas temperature is = %.0f K",T_g)