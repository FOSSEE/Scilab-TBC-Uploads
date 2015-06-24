clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.6
// Page 36
printf("Example 2.6, Page 34 \n\n")

h_natural = 10;//heat transfer coefficient for natural convection in W/m^2 K
h_forced = 50; //heat transfer coefficient for forced convection in W/m^2 K
//for asbestos
k1 = 0.2;      //thermal conductivity in W/m K
//for mineral wool
k2 = 0.05;     //thermal conductivity in W/m K
printf("\n critical radius of insulation in cm");
printf("\n                          h = 10                  h = 50");
printf("\n Asbestos                   %.1f                      %.1f",k1*100/h_natural,k1*100/h_forced);
printf("\n Mineral wool               %.1f                      %.1f",k2*100/h_natural,k2*100/h_forced);
