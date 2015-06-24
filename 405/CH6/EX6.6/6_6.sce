clear;
clc;
printf("\t\t\tExample Number 6.6\n\n\n");
// turbulent heat transfer in a short tube 
// illustration6.6
// solution

p = 101325;// [Pa] pressure of air
Ta = 300;// [K] temperature of air 
d = 0.02;// [m] diameter of tube 
u = 40;// [m/s] velocity of air
L = 0.1;// [m] length of tube
dT = 5;// [degree celsius] rise in temperature 
// we first must evaluate the air properties at 300 K  
v = 15.69*10^(-6);// [square meter/s] kinematic viscosity
k = 0.02624;// [W/m degree celsius]
Cp = 1006;// [J/kg K]
Pr = 0.70;// prandtl no.
rho = 1.18;// [kg/cubic meter]
Re_d = u*d/v;// reynolds number
disp(Re_d,"reynolds number is ");
disp("so the flow is turbulent");
// consulting figure (6-6) for this value of Re_d and L/d = 5 we find
Nu_x_by_Nu_inf = 1.15;
// or the heat transfer coefficient is about 15 percent higher that it would be for thermally developed flow.
// we calculate heat-transfer for developed flow using 
Nu_d = 0.023*Re_d^(0.8)*Pr^(0.4);
// and 
h = k*Nu_d/d;// [W/square meter degree celsius]
// increasing this value by 15 percent
h = 1.15*h;// [W/square meter degree celsius]
// the mass flow is
Ac = %pi*d^(2)/4;// [square meter] 
m_dot = rho*u*Ac;// [kg/s]
// so the total heat transfer is
A = %pi*d*L;// [square meter] 
q_by_A = m_dot*Cp*dT/A;// [W/square meter]
printf("\n\n the constant heat flux that must be applied at the tube surface to result in an air temperature rise of 5 degree celsius is %f W/square meter",q_by_A);
Tb_bar = (Ta+(Ta+dT))/2;// [K]
Tw_bar = Tb_bar+q_by_A/h;// [K] 
printf("\n\n average wall temperature is %f K",Tw_bar);

