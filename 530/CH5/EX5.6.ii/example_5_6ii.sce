clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 5
// Heat Transfer by Forced Convection


// Example 5.6(ii)
// Page 235
printf("Example 5.6(ii), Page 235 \n\n")

D = 0.075 ; // [m]
V = 1.2 ; // [m/s]
T_air = 20 ; // [degree C]
T_surface = 100 ; // [degree C]
T_m = (T_air+T_surface)/2;

v = 18.97*10^-6 ; // [m^2/s]
k = 0.0290 ; // [W/m K]
Pr = 0.696 ;

Re_D = V*D/v;
Nu = 0.3 + [(0.62*(Re_D^0.5)*(Pr^(1/3)))/[(1+((0.4/Pr)^(2/3)))^(1/4)]]*[1+(Re_D/282000)^(5/8)]^(5/8) ;
h = Nu*k/D ; // [W/m^2 K]
flux = h*(T_surface - T_air); // [W/m^2]

// (ii) Using Trial and error method
T_avg = 1500/flux*(T_surface - T_air);

T_assumd = 130 ; // [degree C]
Tm= 75 ; // [degree C]

v1 = 20.56*10^-6 ; // [m^2/s]
k1 = 0.0301 ; // [W/m K]
Pr1 = 0.693 ;

Re_D1 = V*D/v1;


// Using eqn 5.9.8
Nu1 = 33.99;
h = Nu1*k1/D;
// Therefore
T_diff = 1500/h; // [degree C]
T_avg_calc = 129.9 ; // [degree C]
printf("Assumed average wall temperature = %f degree C\n",T_assumd);
printf("Calculated average wall Temperature = %f degree C\n",T_avg_calc);
printf("Hence,Average wall Temperature = %f degree C",T_avg_calc);