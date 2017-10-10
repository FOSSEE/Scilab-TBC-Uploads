// Example 12_3
clc;funcprot(0);
// Given data
r=1.4;// The specific heat ratio
p_s=6*10^5;// The pressure in the large tank in Pa
p_t=5*10^4;// The pressure in the test section in Pa

// Calculation
M_t=sqrt((2/(r-1))*((p_t/p_s)^(-(r-1)/r)-1));// Mach number
printf("\nThe Mach number M_t in the test section is %1.3f",M_t);
