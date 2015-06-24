clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.2
// Page 31
printf("Example 2.2, Page 31 \n\n")

d_i=0.02; // [m] inner radius    
d_o=0.04; // [m] outer radius
r_i=d_i/2; // [m] inner radius
r_o=d_o/2; // [m] outer radius
k=0.58; // [w/m K] thermal conductivity of tube material
t_i=70; //[degree C]
t_o=100; // [degree C]
l=1; // [m] per unit length

// thermal resistance of tube per unit length
R_th_tube=(log(r_o/r_i))/(2*%pi*k*l); // [K/W]

//from table 1.3 , heat transfer co-efficient for condensing steam may be taken as
h=5000; // [W/m^2 K]
// thermal resistance of condensing steam per unit length
R_th_cond=1/(%pi*d_o*l*h);

// since R_th_tube is much less than R_th_cond , we can assume outer surface to be at 100 degree C
//hence heat flow rate per unit meter is
q=l*2*(%pi)*k*(t_i-100)/log(r_o/r_i);

printf("Thermal resistance of tube per unit length is %f K/W\n",R_th_tube);
printf("Thermal resistance of condensing steam per unit length is %f K/W\n",R_th_cond);
printf("Heat flow per unit length is %f W/m",q);