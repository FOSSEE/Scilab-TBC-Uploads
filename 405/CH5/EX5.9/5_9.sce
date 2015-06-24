clear;
clc;
printf("\t\t\tExample Number 5.9\n\n\n");
// turbulent heat transfer from isothermal flat plate   
// illustration5.9
// solution

p = 101325;// [Pa] pressure of air
R = 287;// []
Ta = 20+273.15;// [K] temperature of air 
u = 35;// [m/s] air velocity
L = 0.75;// [m] length of plate 
Tp = 60+273.15;// [K] plate temperature 
// we evaluate properties at the film temperature 
Tf = (Ta+Tp)/2;// [K]
rho = p/(R*Tf);// [kg/cubic meter]
mu = 1.906*10^(-5);// [kg/m s] viscosity  
k = 0.02723;// [W/m degree celsius]
Cp = 1007;// [J/kg K]
Pr = 0.7;// prandtl no.
 // the reynolds number is 
 Rel = rho*u*L/mu;
 // and the boundary layer is turbulent because the reynolds number is greater than 5*10^(5).
 // therefore, we use equation(5-85) to calculate the average heat transfer over the plate:
 Nul_bar = Pr^(1/3)*(0.037*Rel^(0.8)-871);
 A = L*1;// [square meter] area of plate per unit depth
h_bar = Nul_bar*k/L; // [W/square meter degree celsius]
q = h_bar*A*(Tp-Ta);// [W] heat transfer from plate
 printf("heat transfer from plate is %f W",q);
 
 
