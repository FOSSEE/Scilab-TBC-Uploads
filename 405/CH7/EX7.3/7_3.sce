clear;
clc;
printf("\t\t\tExample Number 7.3\n\n\n");
// heat transfer from horizontal tube in water
// Example 7.3 (page no.-333) 
// solution

d = 0.02;// [m] diameter of heater
Ts = 38;// [degree celsius] surface temperature of heater
Tw = 27;// [degree celsius] water temperature
// the film temperature is 
Tf = (Ts+Tw)/2;// [degree celsius]
// from appendix A the properties of water are 
k = 0.630;// [W/m degree celsius] thermal conductivity
// and the following term is particularly useful in obtaining the product GrPr product when it is multiplied by d^(3)*DT
// g*Beta*rho^(2)*Cp/(mu*k) = 2.48*10^(10) [1/m^(3) degree celsius]
K = 2.48*10^(10);// [1/m^(3) degree celsius]
Gr_into_Pr = K*(Ts-Tw)*d^(3);
// using table 7-1 (page number -328), we get 
C = 0.53;
m = 1/4;
// so that
Nu = C*(Gr_into_Pr)^(1/4);
h = Nu*k/d;// [W/square meter degree celsius] convection heat transfer coefficient
// the heat transfer is thus
q_by_L = h*%pi*d*(Ts-Tw);// [W/m]
printf("free-convection heat loss per unit length of heater is %f W/m",q_by_L);

