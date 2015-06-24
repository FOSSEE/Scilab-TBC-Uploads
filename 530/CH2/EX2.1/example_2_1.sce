clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.1
// Page 27
printf("Example 2.1, Page 27 \n\n")

d_i=0.02; // [m] inner radius    
d_o=0.04; // [m] outer radius
r_i=d_i/2; // [m] inner radius
r_o=d_o/2; // [m] outer radius
k=0.58; // [w/m K] thermal conductivity of tube material
t_i=70; //[degree C]
t_o=100; // [degree C]
l=1; // [m] per unit length
// using equation 2.1.5
q=l*2*(%pi)*k*(t_i-t_o)/log(r_o/r_i);
printf("Heat flow per unit length is %f W/m",q);
