

  clc
// Given that
H_c_0= 2e5// Critical field in A/m 
H_c= 1e5 // Magnetic field in A/m
T_c = 8 // Critical temperature  in kelvin

printf("Example 8.6\n")
printf("Standard formula used \tH_c = H_c_0*(1-(T/T_c)^2)  \n")
T = T_c/sqrt(1- (H_c/H_c_0)) // Calculation of Temperature

printf("Required temperature is %f K.\n\n\n",T)
