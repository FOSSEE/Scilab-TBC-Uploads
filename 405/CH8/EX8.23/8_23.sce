clear;
clc;
printf("\t\t\tExample Number 8.23\n\n\n");
// temperature measurement error caused by radiation 
// Example 8.23 (page no.-460) 
// solution

E = 0.9;// emissivity of mercury-in-glass thermometer 
Tt = 20+273;// [K] temperature indicated by thermometer 
Ts = 5+273;// [K] temperature of walls
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
h = 8.3;// [W/square meter] heat transfer coefficient for thermometer
// we employ equation(8-113) for the solution: h*(Tinf-Tt) = sigma*E*(Tt^4-Ts^4)
// inserting the values in above equation 
Tinf = sigma*E*(Tt^4-Ts^4)/h+Tt;// [K]
printf("the true air temperature is %f degree celsius",Tinf-273);

