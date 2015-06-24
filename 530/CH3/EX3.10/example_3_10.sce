clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.10
// Page 138
printf("Example 3.10, Page 138 \n\n")

sigma = 5.670*10^-8 ;
T1 = 473 ; // [K]
T2 = 373 ; // [K]
A1 = 1*2 ; // area, [m^2]
X = 0.25;
Y = 0.5 ;
// From eqn 3.7.4
F12 = (2/(%pi*X*Y))*[log((((1+X^2)*(1+Y^2))/(1+X^2+Y^2))^(1/2)) + Y*((1+X^2)^(1/2))*atan(Y/((1+X^2)^(1/2))) + X*((1+Y^2)^(1/2))*atan(X/((1+Y^2)^(1/2))) - Y*atan(Y) - X*atan(X) ];


q1 = sigma*A1*(T1^4-T2^4)*[(1-F12^2)/(2-2*F12)];

printf("Net radiative heat transfer from the surface = %f W \n",q1);