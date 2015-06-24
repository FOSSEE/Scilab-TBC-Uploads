clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.12
// Page 145
printf("Example 3.12, Page 145 \n\n")

D = 0.02 ; // [m]
T1 = 1000+273 ; // [K]
T2 = 27+273 ; // [K]
s = 5.670*10^-8 ; // stefans constant
// Assuming the opening is closed by an imaginary surface at temperature T1
// Using equation 3.10.3 , we get
q = s*1*%pi*((D/2)^2)*(T1^4-T2^4); // [W]

printf("Rate at which heat is lost by radiation = %f W",q);