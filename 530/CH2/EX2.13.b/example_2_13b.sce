clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.13(b)
// Page 73
printf("Example 2.13(b), Page 73 \n\n")

D = 0.003 ; // [m]
L = 0.03 ; // [m]
h = 10 ; // [W/m^2]
Tf = 20 ; // [C]
T1 = 120 ; // [C]


// (b) Stainless steel fin
k = 15 ; // [W/m K]

// For a circular cross section
m = [4*h/(k*D)]^(1/2);
mL = m*0.03 ;
// T at x = L
T = Tf + (T1-Tf)/cosh(m*L);
printf("mL = %f \n",mL);
printf("Temperature at the tip of fin made of steel is %f degree C \n",T);
