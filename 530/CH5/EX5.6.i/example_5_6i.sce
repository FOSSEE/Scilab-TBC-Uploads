clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 5
// Heat Transfer by Forced Convection


// Example 5.6(i)
// Page 235
printf("Example 5.6(i), Page 235 \n\n")

D = 0.075 ; // [m]
V = 1.2 ; // [m/s]
T_air = 20 ; // [degree C]
T_surface = 100 ; // [degree C]
T_m = (T_air+T_surface)/2;

v = 18.97*10^-6 ; // [m^2/s]
k = 0.0290 ; // [W/m K]
Pr = 0.696 ;

Re_D = V*D/v;

Nu = 0.3 + [(0.62*(Re_D^(1/2))*(Pr^(1/3)))/[(1+((0.4/Pr)^(2/3)))^(1/4)]]*([1+((Re_D/282000)^(5/8))]^(4/5)) ;

h = Nu*k/D ; // [W/m^2 K]

flux = h*(T_surface - T_air); // [W/m^2]
q = flux*%pi*D*1; // [W/m]

printf("Heat transfer rate per unit length = %f W/m\n",q);
