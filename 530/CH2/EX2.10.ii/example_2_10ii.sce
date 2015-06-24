clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.10(ii)
// Page 58
printf("Example 2.10(ii), Page 58 \n\n")

// (ii) Surface of the slab

b = 0.005 ; // [m]
t = 5*60; // time, [sec]
Th = 200 ; // [C]
Tw = 20 ; // [C]
h = 150 ; // [W/m^2 K]
rho = 2200 ; //[kg/m^3]
Cp = 1050 ; // [J/kg K]
k = 0.4 ; // [W/m K]
// Using charts in fig 2.18 and 2.19 and eqn 2.7.19 and 2.7.20
theta = Th - Tw;
Biot_no = h*b/k;
a = k/(rho*Cp); // alpha
Fourier_no = a*t/b^2;

// From fig 2.18, ratio = theta_x_b0/theta_o 
ratio_b0 = 0.12;
// From fig 2.18, ratio = theta_x_b1/theta_o 
ratio_b1 = 0.48;

// Therefore
theta_x_b0 = theta*ratio_b0; // [C]
T_x_b0 = theta_x_b0 + Tw ; // [C]
theta_x_b1 = theta*ratio_b1; // [C]
T_x_b1 = theta_x_b1 + Tw ; // [C]

// From Table 2.2 for Bi = 1.875
lambda_1_b = 1.0498;
x = 2*sin(lambda_1_b)/[lambda_1_b+(sin(lambda_1_b))*(cos(lambda_1_b))];

// From 2.7.19
theta_x_b1 = theta_x_b0*(cos(lambda_1_b*1));
T_x_b1 = theta_x_b1 + Tw;
printf("Temperature at b=1 is %f degree C\n",T_x_b1);
