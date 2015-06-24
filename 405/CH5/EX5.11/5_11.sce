clear;
clc;
printf("\t\t\tExample Number 5.11\n\n\n");
// high speed heat transfer for a flat plate
// Example 5.11 (page no.-257-259) 
// solution

L = 0.7;// [m] length of flat plate
W = 1;// [m] width of plate
// flow conditions are 
M = 3;
p = 101325/20;// [Pa]
T = -40+273;// [degree celsius]
Tw = 35;// [degree celsius] temperature at which plate is maintained
Gamma = 1.4;
g_c = 1;// []
R = 287;// [] universal gas costant
// we have to consider laminar and turbulent portions of the boundary layer seperately
// the free-stream acoustic velocity is calculated from
a = sqrt(Gamma*g_c*R*T);// [m/s]
// so that free stream velocity is 
u = M*a;// [m/s]
// the maximum reynolds number is estimated by making a computation based on properties evaluated at free stream conditions:
rho = p/(R*T);// [Kg/m^(3)]
mu = 1.434*10^(-5);// [Kg/m s]
Re_L = rho*u*L/mu;
// thus we conclude that both laminar and turbulent boundary layer heat transfer must be considered.
// we first determine the reference temperature for the two regimes and then evaluate properties at these temperatures.

// LAMINAR PORTION

T_o = T*(1+((Gamma-1)/2)*M^(2));// [K]
Pr = 0.7// prandtl number(assuming)
// we have
r = sqrt(Pr);
T_aw = r*(T_o-T)+T;// [K]
// then the reference temperature from equation(5-124) is
T_star = T+0.5*(Tw-(T-273))+0.22*(T_aw-T);// [K]
// checking the prandtl number at this temperature
Pr_star = 0.697;
// so that the calculation is valid.because Pr_star and the value of Pr used to determine the recovery factor are almost same
// the other properties to be used in the laminar heat transfer analysis are
rho_star = p/(R*T_star);// [Kg/m^(3)]
mu_star = 2.07*10^(-5);// [Kg/m s]
k_star = 0.03;// [W/m degree celsius]
Cp_star = 1009;// [J/Kg degree celsius]

// TURBULENT PORTION

// Assuming 
Pr = 0.7;
r = Pr^(1/3);
T_aw1 = r*(T_o-T)+T;// [K]
// then the reference temperature from equation(5-124) is
T_star = T+0.5*(Tw-(T-273))+0.22*(T_aw-T);// [K]
// checking the prandtl number at this temperature
Pr_star1 = 0.695;
// the agreement between Pr_star and the assumed value is sufficiently close.
// the other properties to be used in the turbulent heat transfer analysis are
rho_star1 = p/(R*T_star);// [Kg/m^(3)]
mu_star1 = 2.09*10^(-5);// [Kg/m s]
k_star1 = 0.0302;// [W/m degree celsius]
Cp_star1 = 1009;// [J/Kg degree celsius]
 
// LAMINAR HEAT TRANSFER

// we assume
Re_star_crit = 5*10^(5);
x_c = Re_star_crit*mu_star/(rho_star*u);// [m]
Nu_bar = 0.664*(Re_star_crit)^(1/2)*(Pr_star)^(1/3);
h_bar = Nu_bar*k_star/x_c;// [W/m^(2) degree celsius] average heat transfer coefficient
// heat transfer is calculated as
A = x_c*1;// [m^(2)]
q = h_bar*A*(Tw-(T_aw-273));// [W]

// TURBULENT HEAT TRANSFER

// to determine the turbulent heat transfer we must obtain an expression for the local heat transfer coefficient from
// St_x*Pr_star1^(2/3) = 0.0296*Re_star_x^(-1/5)
// and then integrate from x = 0.222m to x = 0.7m to determine the total heat transfer
h_x = integrate('Pr_star1^(-2/3)*rho_star1*u*Cp_star1*0.0296*(rho_star1*u*x/mu_star1)^(-1/5)','x',0.222,0.7);// [W/m^(2) degree celsius]
// the average heat transfer coefficient in the turbulent region is determined from integral h_x dx divided by integral dx limit from 0.222 to 0.7
h_bar1 = h_x/(integrate('1','x',0.222,0.7));//[W/m^(2) degree celsius]
// using this value we may calculate the heat transfer in the turbulent region of the flat plate:
A1 = (L-0.222);// [m^(2)]
q1 = h_bar1*A1*(Tw-(T_aw1-273));// W

// the total amount of cooling required is the sum of the heat transfers for the laminar and turbulent portions
 Total_cooling = abs(q)+abs(q1);// [W]
printf("the total amount of cooling required is the sum of the heat transfers for the laminar and turbulent portions is %f W",Total_cooling);

 
 