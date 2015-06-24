

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 10, Example 3")
//Flow rate of n-butyl alcohol in kg/hr
m=161;
//Internal diameter of copper tube in meters
D=0.01;
//Tube wall temperature in degree C
T=140;
//surface tension in N/m
sigma=0.0183;
//Heat of vaporization in J/kg
h_fg=591500;
//atmospheric pressure boiling point in degree C
T_sat=117.5;
// saturation pressure corresponding to a saturation temperature of 140°C in atm
P_sat=2;
//Density of vapor in kg/m^3
rho_v=2.3;
//Viscosity of vapor in kg/m s
mu_v=.0143e-3;
//Property values for n-butyl alcohol are taken from Appendix 2, Table 19
//Density in kg/m^3
rho_l=737;
//Absolute viscosity in Ns/m^2
mu_l=0.39e-3;
//Specific heat in J/kg K
c_l=3429;
//Prandtl number
Pr_l=8.2;
//Thermal conductivity in W/m K
k_l=0.13;
//Empirical constant
C_sf=0.00305;// Value taken from table 10.1
//Mass velocity in kg/m^2 s
G=(m/3600)*(4/(%pi*0.01^2));
//Reynolds number for liquid flow
Re_D=(G*D)/mu_l;
//The contribution to the heat transfer coefficient due to the two-phase annular flow is [(0.023)*(14590)^0.8*(8.2)^0.4*16.3*(1-x)^0.8*F]
//Since the vapor pressure changes by 1 atm over the temperature range from saturation temperature to 140°C,so saturation pressure in N/m^2
delta_p_sat=101300;
//Therefore the contribution to the heat transfer coefficient from nucleate boiling is
//h_b= 0.00122*[(0.163^0.79*3429^0.45*737^0.49*1^0.25)/(0.0183^0.5*0.39e-3^0.29*591300^0.24*2.3^0.24)]*(140-117.5)^0.24*(101300)^0.75*S
//or h_b= 8393S
//Now 1/Xtt will be calculated by
//1/Xtt=12.86*(x/(1-x))^0.9
//Now a table is prepared showing stepwise calculations that track the increase in quality, from x=0 to x=0.5,assuming that the steps delta x are small enough that the heat flux and other parameters are reasonably constant in that step
disp("The tube length required to reach 50% quality is 1.35 m")
