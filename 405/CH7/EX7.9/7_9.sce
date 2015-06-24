clear;
clc;
printf("\t\t\tExample Number 7.9\n\n\n");
// heat transfer across horizontal air gap
// Example 7.9 (page no.-346) 
// solution

a = 0.2;// [m] side length of plate
d = 0.01;// [m] seperation between two plates 
p = 101325;// [Pa] pressure of air
R = 287;// [] universal gas constant
T1 = 100;// [degree celsius] temperature of first plate
T2 = 40;// [degree celsius] temperature of second plate
// the properties are the same as given in example(7.8)
Tf = (T1+T2)/2;// [degree celsius]
rho = p/(R*(Tf+273));// [Kg/m^(3)] density
k = 0.0295;// [W/m degree celsius]
Pr = 0.70;// prandtl number
Beta = 1/(Tf+273);// [K^(-1)]
mu = 2.043*10^(-5);// [Kg/m s] viscosity
g = 9.8;// [square meter/s] acceleration due to gravity
// the GrPr product is evaluated on the basis of the separating distance, so we have 
Gr_into_Pr = (g*rho^(2)*Beta*(T1-T2)*(d)^(3)*Pr)/(mu^(2));
// consulting table 7-3(page no.-344) we find
C = 0.059;
n = 0.4;
m = 0;
Ke_by_K = C*(Gr_into_Pr)^(n)*(a/d)^(m);
A = a^(2);// [square meter] area of plate 
q = Ke_by_K*k*A*(T1-T2)/d;// [W]
printf("heat transfer across the air space is %f W",q);