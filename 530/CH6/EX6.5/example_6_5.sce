clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 6
// Heat Transfer by Natural Convection


// Example 6.5
// Page 269
printf("Example 6.5, Page 269 \n \n");

T_p = 75 ; // Temperature of absorber plate , degree C
T_c = 55 ; // Temperature of glass cover , degree C
L = 0.025 ; // [m]

H = 2 ; // [m]
Y = 70 ; // degree

a = 19/180*%pi ; // [Radians]

r = H/L ;

T_avg = (T_p+T_c)/2+273 ; // [K]
// Properties at 65 degree C
k = 0.0294 ; // [W/m K]
v = 19.50*10^-6 ; // [m^2/s]
Pr = 0.695 ;

Ra = 9.81*(1/T_avg)*(T_p-T_c)*(L^3)/(v^2)*Pr*cos(a);

// From eqn 6.4.3
Nu = 0.229*(Ra)^0.252;

h = Nu*k/L ; // [W/m^2 K]

Rate = h*2*1*(T_p-T_c); // [W]

printf("Heat transfer rate = %f W",Rate);

