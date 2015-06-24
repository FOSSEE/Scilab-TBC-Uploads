clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 6
// Heat Transfer by Natural Convection


// Example 6.2
// Page 259
printf("Example 6.2, Page 259 \n \n");

Tm = 150 ; // [degree C]
// From table A.2
v = 28.95*10^-6 ; // [m^2/s]
Pr = 0.683;
k = 0.0357 ; // [W/m K]

B = 1/(273+Tm); // [K^-1]

// from eqn 6.2.30
printf("Equation 6.2.30 \n h = k/L*0.59*[9.81*B*(Tw-Tinf)*(L^3)*0.683/(v^2)]^(1/4)\n")
// h = k/L*0.59*[9.81*B*(Tw-Tinf)*(L^3)*0.683/(v^2)]^(1/4);
// simplifying we get
// h = 1.38*[(Tw-Tinf)/L]^(1/4)
printf("Reduces to h = 1.38*[(Tw-Tinf)/L]^(1/4) \n")


// From eqn 6.2.33
// h*L/k = 0.10*[9.81*B*(Tw-Tinf)*(L^3)*0.683/(v^2)]^(1/3);
printf("Equation 6.2.33 \n h*L/k = 0.10*[9.81*B*(Tw-Tinf)*(L^3)*0.683/(v^2)]^(1/3) \n");
// simplifying
// h = 0.95*(Tw-Tinf)^1/3
printf("Reduces to h = 0.95*(Tw-Tinf)^1/3 \n");

printf("where h is expressed in W/m^2 K, (Tw-Tinf) in C and L in metres \n");





