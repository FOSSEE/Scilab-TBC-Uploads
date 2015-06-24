clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 6
// Heat Transfer by Natural Convection


// Example 6.6
// Page 270
printf("Example 6.6, Page 270 \n \n");

T_air = 30 ; // [C]
D = 0.04 ; // [m]
T_s = 70 ; // surface temperature, [C]
V = 0.3 ; // [m/s]

Tm = (T_air + T_s)/2 ; // [C]
// Properties at Tm
v = 17.95*10^-6 ; // [m^2/s]
Pr = 0.698 ;
k = 0.0283 ; // [W/m K]

Gr = 9.81*1/323*(T_s-T_air)*(D^3)/v^2;
Re = V*D/v ; 
X = Gr/Re^2 ; 
printf("Since Gr/Re^2 = %f is > 0.2, we have a combined convection situation. \n\n",X);

// From Eqn 5.9.8
Nu_forced = 0.3 + 0.62*(Re^0.5)*(Pr^(1/3))/[[1+(0.4/Pr)^(2/3)]^(1/4)]*[1+(Re/282000)^(5/8)]^(4/5);

// Substituting in Eqn 6.5.1
Nu = Nu_forced*[1+6.275*(X)^(7/4)]^(1/7);
h = Nu*(k/D);
printf("The Average heat transfer coefficient = %f W/m^2 K",h);