clear ;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.12
// Page 67
printf("Example 2.12, Page 67 \n\n")

a = 0.12 ; // [m]

T = 400 ; // [C]
To = 25 ; //[C]
t = 100/60 ; // [hour]
h = 10 ; // [W/m^2 K]
k = 1.0 ; // [W/m K]
alpha = 3.33*10^-3 ; // [m^2/h]
// using fig 2.18 and eqn 2.7.20

x1 = h*a/k ;
x2 = k/(h*a);
x3 = alpha*t/a^2;

// Let ratio_x = theta/theta_o for x direction, from fig 2.18
ratio_x = 0.82 ;

// Similarly, for y direction
ratio_y = 0.41;

// Similarly, for z direction
ratio_z = 0.30;

// Therefore
total_ratio = ratio_x*ratio_y*ratio_z ;

T_centre = To + total_ratio*(T-To) ; // [degree C]
printf("Temperature at the centre of the brick = %f degree C \n\n",T_centre);

// Alternatively
printf("Alternatively, obtaining Biot number and values of lambda_1_b and using eqn 2.7.20, we get \n")

ratio_x = 1.1310*exp(-(0.9036^2)*0.385);
ratio_y = 1.0701*exp(-(0.6533^2)*2.220);
ratio_z = 1.0580*exp(-(0.5932^2)*3.469);
ratio = ratio_x*ratio_y*ratio_z;

T_centre = To + total_ratio*(T-To) ; // [degree C]
printf("Temperature at the centre of the brick = %f degree C \n",T_centre);