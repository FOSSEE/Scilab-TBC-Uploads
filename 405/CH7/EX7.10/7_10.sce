clear;
clc;
printf("\t\t\tExample Number 7.10\n\n\n");
// heat transfer across water layer
// Example 7.10 (page no.-346-347) 
// solution

L = 0.5;// [m] length of square plate
d = 0.01;// [m] seperation between square plates
T1 = 100;// [degree F] temperature of lower plate
T2 = 80;// [degree F] temperature of upper plate
// we evaluate properties at mean temperature of 90 degree F and obtain, for water
k = 0.623;// [W/m degree celsus]
// and the following term is particularly useful in obtaining the product GrPr 
// g*Beta*rho^(2)*Cp/(mu*k) = 2.48*10^(10) [1/m^(3) degree celsius]
// the Grashof-prandtl number product is now evaluated using the plate spacing of 0.01 m as the characterstic dimension
K = 2.48*10^(10);// [1/m^(3) degree celsius]
Gr_into_Pr = K*(T1-T2)*(5/9)*d^(3);
// now, using equation 7-64 and consulting table 7-3(page no.-344) we obtain
C = 0.13;
n = 0.3;
m = 0;
// therefore, equation (7-64) becomes
Ke_by_K = C*Gr_into_Pr^(n);
// the effectve thermal conductivity is thus
ke = k*Ke_by_K;// [W/m degree celsius]
// and the heat transfer is
A = L^(2);// [square meter] area of plate
q = ke*A*(T1-T2)*(5/9)/d;// [W]
printf("heat lost by the lower plate is %f W",q);

