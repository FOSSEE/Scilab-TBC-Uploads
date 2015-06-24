clear;
clc;
printf("\t\t\tExample Number 6.10\n\n\n");
// heating of air with in-line tube bank
// Example 6.10(page number-300-302)
// solution

p = 101325;// [Pa] pressure of air
Ta = 10+273.15;// [K] temperature of air 
d = 0.0254;// [m] diameter of tubes
Sp = 0.0381;// [m] spacing between tubes in normal and parallel direction
Sn = Sp;
R = 287;// [] universal gas constant
u = 7;// [m/s] velocity of air 
Ts = 65+273.15;// [K] surface temperature of tubes
// the constants for use with equation (6-17) may be obtained from table 6-4(page no.-298),using
Sp_by_d = Sp/d;
Sn_by_d = Sn/d;
// so that
C = 0.278;
n = 0.620;
// the properties of air are evaluated at the film temperature, which at entrance to the tube bank is
Tf = (Ta+Ts)/2;// [K]
rho_f = p/(R*Tf);// [kg/cubic meter]
mu_f = 1.894*10^(-5);// [kg/m s]
k_f = 0.027;// [W/m degree celsius]
Pr_f = 0.706;// prandtl number
Cp = 1007;// [J/Kg degree celsius]
// the maximum velocity is therefore
u_max = u*Sn/(Sn-d);// [m/s]
// the reynolds number is computed by using the maximum velocity
Re = rho_f*u_max*d/mu_f;
// the heat transfer coefficient is calculated by using equation(6-17)
h = C*Re^(n)*Pr_f^(1/3)*k_f/d;// [W/square meter degree celsius]
// multiplying by 0.92 from table 6-5 (page no.-298) to correct for only five tube rows gives
h = 0.92*h;// [W/square meter degree celsius]
// the total surface area for heat transfer, considering unit length of tubes is 
N = 15*5;// ttal no. of tubes
A = N*%pi*d*1;// [square meter/m] 
// befre calculating the heat transfer, we must recognize thet the air temperature increases as the air flows thrugh the tube bank.
// therefore, this must be taken into account when using q=h*A*(Ts-Ta)
// as a good approximatin, we can use an arithmetic average value of Tinf and write for the energy balance 
// say the equation A is      q = h*A*(Ts-(Tinf1+Tinf2)/2) = m_dot*Cp*(Tinf2-Tinf1)
// where now the subscripts 1 and 2 designate entrance and exit to the tube bank.
// the mass flow to the entrance to the 15 tubes is 
rho_inf = p/(R*Ta);// [Kg/m^(3)]
m_dot=rho_inf*u*15*Sn;// [kg/s]
// so that equation A becomes after inserting the values and solving
Tinf1 = Ta;// [K]
deff('[y] = f1(Tinf2)','y = (h*A*(Ts-(Tinf1+Tinf2)/2)-m_dot*Cp*(Tinf2-Tinf1))')
Tinf2=fsolve(1,f1);
// the heat transfer is then obtained from the right side of equation A
q = m_dot*Cp*(Tinf2-Ta);// [W/m]
printf("the exit air temperature is %f degree celsius",Tinf2-273);
printf("\n\n heat transfer per unit length for the tube bank is %f kW/m",q/1000);


