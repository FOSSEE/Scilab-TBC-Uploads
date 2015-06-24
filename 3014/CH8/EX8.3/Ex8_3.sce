
 clc 
// Given that
H_c_0= 1 // Let 
H_c= 0.1 * H_c_0 // Magnetic field in A/m
T_c = 7.2 // Critical temperature in kelvin

printf("Example 8.3\n")
printf("Standard formula used \tH_c = H_c_0*(1-(T/T_c)^2)  \n")
T = T_c*sqrt(1- (H_c/H_c_0)) // Calculation of Temperature

printf("Required temperature is %f K.\n\n\n",T)
