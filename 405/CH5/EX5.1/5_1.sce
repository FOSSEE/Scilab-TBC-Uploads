clear;
clc;
printf("\t\t\tExample Number 5.1\n\n\n");
// water flow in a diffuser  
// illustration5.1
// solution

Tw = 20;// [degree celcius] water temperature 
m_dot = 8;// [kg/s] water flow rate 
d1 = 0.03;// [m] diameter at section 1
d2 = 0.07;// [m] diameter at section 2
A1 = %pi*d1^(2)/4;// [square meter] cross-sectional area at section 1
A2 = %pi*d2^(2)/4;// [square meter] cross-sectional area at section  2
gc = 1;// [m/s^(2)] acceleration due to gravity
rho = 1000;// [kg/cubic meter] density of water at 20 degree celcius
// we may calculate the velocities from the mass-continuity relation
u1 = m_dot/(rho*A1);// [m/s]
u2 = m_dot/(rho*A2);// [m/s]
// the pressure difference is obtained by Bernoulli equation(5-7a)
p2_minus_p1 = rho*(u1^(2)-u2^(2))/(2*gc);// [Pa] 
printf("the increase in static pressure between sections 1 and 2 is %f kPa",p2_minus_p1/1000);



