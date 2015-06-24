

  clc
// Given that
H_c_0= 1.5e5// Critical field in A/m 
H_c= 1.05e5 // Magnetic field in A/m
T_c = 9.2 // Critical temperature in kelvin

printf ("Example 8.5\n")
printf("Standard formula used \tH_c = H_c_0*(1-(T/T_c)^2)  \n")
T = T_c*sqrt(1- (H_c/H_c_0)) // Calculation of Temperature

printf("Required temperature is %f K.\n\n\n",T)
