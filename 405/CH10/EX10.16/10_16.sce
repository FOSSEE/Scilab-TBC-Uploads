clear;
clc;
printf("\t\t\tExample Number 10.16\n\n\n");
// heat-transfer coefficient in compact exchanger   
// Example 10.16 (page no.-556-557) 
// solution

p = 101325;// [Pa] pressure of air
T = 300;// [K] temperature of entering air
u = 15;// [m/s] velocity of air
// we obtain the air properties from table A-5(page no.-607) 
rho = 1.1774;// [kg/cubic meter] density of air
Cp = 1005.7;// [J/kg degree celsius] specific heat of air
mu = 1.983*10^(-5);// [kg/m s] viscosity of air
Pr = 0.708;// prandtl number
// from figure 10-19(page no.-557) we have
Ac_by_A = 0.697;
sigma = Ac_by_A;
Dh = 3.597*10^(-3);// [m] 
// the mass velocity is thus 
G = rho*u/sigma;// [kg/square meter s]
// and the reynolds number is 
Re = Dh*G/mu;
// from figure 10-19(page no.-557) we can read
St_into_Pr_exp_2_by_3 = 0.0036;
// and the heat transfer coefficient is 
h = St_into_Pr_exp_2_by_3*G*Cp*(Pr)^(-2/3);// [W/square meter degree celsius]
printf("heat-transfer coefficient is %f W/square meter degree celsius",h);







