
  clc
// Given that
T_1 = 3.5 // Temperature in kelvin
T_c = 4.153 // Critical temp in kelvin
lambda_t = 750 // Penetration depth at T_1 in angstrom
printf("Example 8.10\n")
printf("Standard formula used \nlambda_0 = lambda_t*sqrt(1-(T_1/T_c)^4) \n")

lambda_0 = lambda_t*sqrt(1-(T_1/T_c)^4) // Calculation of penetration depth at 3.5K
printf("\n Penetration depth at 0 K is %f angstrom.\n\n\n",lambda_0)


