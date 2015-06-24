clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.3
// Page 31
printf("Example 2.3, Page 31 \n\n")

h_w=140; // heat transfer coefficient on water side, [W/m^2 K]
h_o=150; // heat transfer coefficient on oil side, [W/m^2 K]
k=30; // thermal conductivity [W/m K]
r_o=0.01; // inner diameter of GI pipe on inside
r_i=0.008; // outer diameter GI pipe on inside
l=1; // [m] , per unit length

// Thermal resistance of inner GI pipe
R_inner_GI=log((r_o/r_i))/(2*%pi*k*l);


// Thermal resistance on the oil side per unit length
R_oilside=1/(h_o*%pi*2*r_i*l);


// Thermal resistance on cold water side per unit length
R_waterside=1/(h_w*%pi*2*r_o*l);


// we see thermal resistance of inner GI pipe contributes less than 0.5 percent to the total resistance


printf("Thermal resistance of inner GI pipe = %f K/W \n",R_inner_GI);
printf("Thermal resistance on the oil side per unit length = %f K/W \n",R_oilside);
printf("Thermal resistance on cold water side per unit length = %f K/W \n",R_waterside);
printf("So, Engineer in-charge has made a bad decision");