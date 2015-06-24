clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.11(b)
// Page 65
printf("Example 2.11(b), Page 65 \n\n")

D = 0.05 ; // [m]
To = 450 ; // [degree C]
Tf = 90 ; // [degree C]
T = 150 ; // [degree c]
h = 115 ; // [W/m^2 K]
rho = 8000 ; // [kg/m^3]
Cp = 0.42*1000 ; // [J/kg K]
k = 46 ; // [W/m K]
R = D/2;

// (b)
// let ratio = theta_R_0/theta_o
ratio = (T-Tf)/(To - Tf);
Bi = h*R/k;
// From Table 2.5
lambda_1_R = 0.430;
x = 2*[sin(lambda_1_R) - lambda_1_R*cos(lambda_1_R)]/[lambda_1_R - sin(lambda_1_R)*cos(lambda_1_R)];

// Substituting in equattion 2.7.29, we have an equation in variable y(=at/R^2) 
// Solving
function[eqn] = parameter(y)   
eqn = ratio - x*exp(-(lambda_1_R^2)*(y));
funcprot(0);
endfunction

y = 5; // (initial guess, assumed value for fsolve function)
Y = fsolve(y,parameter);

a = k/(Cp*rho); // alpha
t2 = Y*(R^2)/(a); // [sec]
t2_min = t2/60; // [min]
printf("Time taken by the centre of the ball to reach 150 degree C if internal temperature gradients are not neglected is %f seconds i.e. %f minutes",t2,t2_min);
