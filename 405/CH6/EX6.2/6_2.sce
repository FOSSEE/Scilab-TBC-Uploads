clear;
clc;
printf("\t\t\tExample Number 6.2\n\n\n");
// heating of water in laminar tube flow 
// illustration6.2
// solution

Tw = 60;// [degree celsius] temperature of water
d = 0.0254;// [m] diameter of tube 
R = 287;// [] gas constant
u = 0.02;// [m/s] velocity of water
Tw = 80;// [degree celsius] temperature of wall   
L = 3;// [m] length of the tube
// we first calculate the reynolds number at the inlet bulk temperature to determine the flow regime  
// the properties of water at  temperature of 333.15 K are
rho = 985;// [kg/cubic meter] density of gas
mu = 4.71*10^(-4);// [kg/m s] viscosity  
k = 0.651;// [W/m degree celsius]
Cp = 4.18*10^3;// [J/kg K]
Pr = 3.02;// prandtl no.
Re_d = rho*u*d/mu;// reynolds number
disp(Re_d, "reynolds number is" );
disp("so that the flow is laminar");
// so the flow is laminar, calculating the additional parameter, we have 
B = Re_d*Pr*d/L ;
// since the value of B is greater than 10, so equation(6-10) is applicable.
// firstly making the calculation on the basis of 60 degree celsius, determine the exit bulk temperature
// the energy balance becomes q = h*pi*d*L(Tw-(Tb1+Tb2)/2) = m_dot*Cp*(Tb2-Tb1)   say equation a 
// at the wall temperature of 80 degree celsius 
mu_w = 3.55*10^(-4);// [kg/m s] 
// from equation (6-10)
Nu_d = 1.86*(B)^(1/3)*(mu/mu_w)^(0.14);
h = k*Nu_d/d;
// the mass flow rate is 
m_dot = rho*%pi*d^(2)*u/4;// [kg/s]
// inserting the values in equation a
Tb1 = 60;// [degree celsius]
deff('[y] = f(Tb2)','y = (h*%pi*d*L*(Tw-(Tb1+Tb2)/2)-m_dot*Cp*(Tb2-Tb1))')
Tb2 = fsolve(1,f);
Tb_mean = (Tb1+Tb2)/2;// [degree celsius]
// we obtain the properties at  Tb_mean
rho1 = 982;// [kg/m^(3)] density of gas
mu1 = 4.36*10^(-4);// [kg/m s] viscosity  
k1 = 0.656;// [W/m degree celsius]
Cp1 = 4.185*10^3;// [J/kg K]
Pr1 = 2.78;// prandtl no.
Re_d1 = Re_d*mu/mu1;
C = Re_d1*Pr1*d/L ;
Nu_d1 = 1.86*(C)^(1/3)*(mu1/mu_w)^(0.14);
h = k1*Nu_d1/d;
// we insert this value of h back into equation a to get 
deff('[y] = f(Tb2)','y = (h*%pi*d*L*(Tw-(Tb1+Tb2)/2)-m_dot*Cp*(Tb2-Tb1))')
Tb2 = fsolve(1,f);
printf("\n the exit water temperature is %f degree celsius",Tb2);






