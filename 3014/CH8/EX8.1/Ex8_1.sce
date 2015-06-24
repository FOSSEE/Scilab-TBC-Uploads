 clc
// Given that
H_c_0=  0.0306// Critical Field in tesla
T_c = 3.7 // Critical temperature in kelvin
T = 2 // Temperature in kelvin
printf("Example 8.1\n")
printf("Standard formula used \tH_c = H_c_0*(1-(T/T_c)^2)  \n")
H_c = H_c_0*(1-(T/T_c)^2) // Calculation of critical field

printf("Magnetic Field at %d K is %f tesla.\n\n\n",T,H_c)
