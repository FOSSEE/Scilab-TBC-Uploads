clear;
clc;
printf("\t\t\tExample Number 6.1\n\n\n");
// turbulent heat transfer in a tube  
// illustration6.1
// solution

p = 2*101325;// [Pa] pressure of air
Ta = 200+273.15;// [K] temperature of air 
d = 0.0254;// [m] diameter of tube 
R = 287;// [] gas constant
u = 10;// [m/s] velocity of air
dT = 20;// [degree celsius] temperature difference between wall and air 
// we first calculate the reynolds number to determine if the flow is laminar or turbulent, and then select the appropriate empirical correlation to calculate the heat transfer 
// the properties of air at a bulk temperature of 473 K are
rho = p/(R*Ta);// [kg/cubic meter] density of gas
mu = 2.57*10^(-5);// [kg/m s] viscosity  
k = 0.0386;// [W/m degree celsius]
Cp = 1025;// [J/kg K]
Pr = 0.681;// prandtl no.
Re_d = rho*u*d/mu;// reynolds number
disp(Re_d, "reynolds number is" );
disp("so that the flow is turbulent");
// we therefore use equation (6-4a) to calculate the heat transfer coefficient
Nu_d = 0.023*Re_d^(0.8)*Pr^(0.4);// nusselt no.
h = Nu_d*k/d;// [W/m^2 degree celsius] heat transfer coefficient
// the heat transfer per unit length is then
q_by_L = h*%pi*d*(dT);// [W/m]
L = 3;// [m] 
// we can now make an energy balance to calculate the increase in bulk temperature in a 3 m length of tube :
// q = m_dot*Cp*dT_b = L*(q_byL)
m_dot = rho*u*%pi*d^(2)/4;// [kg/s] gas flow rate
// so that we insert the numerical values in the energy balance to obtain 
dT_b = L*q_by_L/(m_dot*Cp);// [degree celsius]
printf("\n heat transfer per unit length is %f W/m",q_by_L);
printf("\n\n bulk temperature increase over the length of 3 m on tube is %f degree celsius ",dT_b);




