
  clc
// Given that
m_0 = 9.1e-31 // Mass of electron in kg
mu_0 = 1.256e-6// SI
e = 1.6e-19 // Charge on electron in coulomb
eta_s = 1e28 // superelectron density in  no. per cube
T_1 = 0 // First temp in kelvin
T_2 = 1 // Second temp in kelvin
T_c = 3 // Critical temp in kelvin

printf("Example 8.9\n")
printf("Standard formula used \tlambda_0 = sqrt(m_0/(mu_0*eta_s*e^2))\n")
lambda_0 = sqrt(m_0/(mu_0*eta_s*e^2))// Calculation of penetration depth at 0K
lambda_t = lambda_0/sqrt(1-(T_2/T_c)^4) // Calculation of penetration depth at 2K

printf("Penetration depth at %d K is %d angestrom.",T_1,lambda_0*1e10)
printf("\nPenetration depth at %d K is %f angestrom.\n\n\n",T_2,lambda_t*1e10)
