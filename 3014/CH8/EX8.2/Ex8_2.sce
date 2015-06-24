
 clc 
// Given that
H_c=  3.3e4 // // Magnetic field in A/m
T_c = 7.2 // Critical temperature in kelvin
T = 5 // Temperature in kelvin
printf("Example 8.2\n")
printf("Standard formula used \tH_c = H_c_0*(1-(T/T_c)^2)  \n")
H_c_0 = H_c*(1-(T/T_c)^2)^(-1) // Calculation of critical field
printf("Magnetic Field at %d K is %e A/m\n\n\n",T,H_c_0)
