clear;
clc;
printf("\t\t\tExample Number 7.13\n\n\n");
// combined free and forced convection with air
// Example 7.12 (page no.-353-355) 
// solution

p = 101325;// [Pa] pressure of air
Ta = 27;// [degree celsius] temperature of air
d = 0.025;// [m] diameter of tube
u = 0.3;// [m/s] velocity of air
Tw = 140;// [degree celcius] temperature of tube wall
L = 0.4;// [m] length of tube
R = 287;// [] universal gas constant
// the properties of air are evaluated at the film temperature:
Tf = (Tw+Ta)/2;// [degree celcius]
// the properties of interest are thus
kf = 0.0305;// [W/m degree celcius]
Pr = 0.695;// prandtl number
Beta = 1/(Tf+273);// [K^(-1)]
g = 9.8;// [square meter/s] acceleration due to gravity
mu_f = 2.102*10^(-5);// [Kg/m s]
mu_w = 2.337*10^(-5);// [Kg/m s]
rho_f = p/(R*(Tf+273));// [Kg/cubic meter]
// let us take the bulk temperature as 27 degree celsius for evaluating mu_b;then
mu_b = 1.8462*10^(-5);// [Kg/m s]
// the significant parameters are calculated as 
Re_f = rho_f*u*d/mu_f;
Gr = rho_f^(2)*g*Beta*(Tw-Ta)*d^(3)/mu_f^(2);
Z = Gr*Pr*d/L;// constant
// according to figure(7-14)(page no.-354), the mixed convection flow regime is encountered. thus we must use equation(7-77).
// The graetz number is calculated as 
Gz = Re_f*Pr*d/L;
// and the numerical calculation for equation(7-77) becomes
Nu = 1.75*(mu_b/mu_w)^(0.14)*[Gz+0.012*(Gz*Gr^(1/3))^(4/3)]^(1/3);
// the average heat transfer coefficient is calculated as 
h_bar = Nu*kf/d;// [W/square meter degree celsius]
printf("heat transfer coefficient is %f W/square meter degree celsius",h_bar);

