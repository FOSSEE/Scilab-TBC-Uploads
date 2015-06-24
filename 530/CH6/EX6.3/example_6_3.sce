clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 6
// Heat Transfer by Natural Convection


// Example 6.3
// Page 260
printf("Example 6.3, Page 260 \n \n");

s = 0.2 ; // [m]
d = 0.005 ; // [m]
rho = 7900 ; // [kg/m^3]
Cp = 460 ; // [J/kg K]

T_air = 20 ; // [C]
// For 430 C to 330 C
T_avg = 380 ; // [C]
Tm = (T_avg + T_air)/2 ; // [C]


v = 34.85*10^-6 ; // [m^2/s]
Pr = 0.680 ;
k = 0.0393 ; // [W/m K]

Re = 9.81*1/(273+Tm)*(T_avg-T_air)*(s^3)/(v^2)*Pr;

// From eqn 6.2.31
Nu = 0.68 + 0.670*(Re^(1/4))/[1+(0.492/Pr)^(4/9)]^(4/9);

h = Nu*k/s; // [W/m^2 K]
t1 = rho*s*s*d*Cp/((s^2)*2*h)*log((430-T_air)/(330-T_air)); // [s]
printf("Time required for the plate to cool from 430 C to 330 C is %f s\n",t1);

// for 330 to 230
h2 = 7.348 ; // [W/m^2 K]
t2 = rho*s*s*d*Cp/((s^2)*2*h2)*log((330-T_air)/(230-T_air)); // [s]
printf("Time required for the plate to cool from 330 C to 230 C is %f s\n",t2);

// for 230 to 130
h3 = 6.780; // [W/m^2 K]
t3 = rho*s*s*d*Cp/((s^2)*2*h3)*log((230-T_air)/(130-T_air)); // [s]
printf("Time required for the plate to cool from 230 C to 130 C is %f s\n",t3);

// Total time

time = t1+t2+t3;
minute = time/60;
printf("Hence, time required for the plate to cool from 430 C to 130 C \n = %f s\n = %f min",time,minute);
