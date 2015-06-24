clear;
clc;
printf("\t\t\tExample Number 7.8\n\n\n");
// heat transfer across vertical air gap
// Example 7.8 (page no.-345) 
// solution

L = 0.5;// [m] side length vertical square plate
d = 0.015;// [m] distance between plates
p = 101325;// [Pa] pressure of air
R = 287;// [] universal gas constant
T1 = 100;// [degree celsius] temperature of first plate
T2 = 40;// [degree celsius] temperature of second plate
E = 0.2;// emissivity of both surfaces
// the properties of air is evaluated at the mean temperature
Tf = (T1+T2)/2;// [degree celsius]
rho = p/(R*(Tf+273));// [Kg/m^(3)] density
k = 0.0295;// [W/m degree celsius]
Pr = 0.70;// prandtl number
Beta = 1/(Tf+273);// [K^(-1)]
mu = 2.043*10^(-5);// [Kg/m s] viscosity
g = 9.8;// [square meter/s] acceleration due to gravity
// the Grashof-prandtl number product is now calculated as 
Gr_into_Pr = (g*rho^(2)*Beta*(T1-T2)*(d)^(3)*Pr)/(mu^(2));
// we may now use equation (7-64) to calculate the effective thermal conductivity, with
L = 0.5;// [m]
del = 0.015;// [m]
// and the constants taken from table 7-3(page no.-344):
Ke_by_K = 0.197*(Gr_into_Pr)^(1/4)*(L/del)^(-1/9);
// the heat transfer may now be calculated with equation (7-54). the area is 
A = L^(2);// [square meter]
q = Ke_by_K*k*A*(T1-T2)/del;// [W]
 // the radiation flux is calculated with equation(7-67), taking 
T1 = 373;// [K]
T2 = 313;// [K]
E1 = E;
E2 = E;
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
q_A = sigma*(T1^(4)-T2^(4))/((1/E1)+(1/E2)-1);// [W/square meter]
q_rad = A*q_A;// [W]
printf("free-convection heat transfer across the air space is %f W",q);
printf("\n\nradiation heat transfer across the air space is %f W",q_rad);
