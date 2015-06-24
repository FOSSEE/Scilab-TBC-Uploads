
clc;
clear;
//Example 3.26
k=0.14  // for oil[W/m.K]
Cp=2.1 // for oil [kJ/kg.K]
Cp=Cp*10^3  //J/kg.K
mu=154  //[mN.s/sq m]
mu_w=87 //(mn.s/sq m)
L=1.5   //[m]
m_dot=0.5   //Mass flow rate of oil[kg/s]
Di=0.019 //Diameter of tube [m]
mean_T=319  //Mean temperature of oil [K]
mu=mu*10^-3 //[N.s/sq m] or [kg/(m.s)]
A=%pi*(Di/2)^2   //[sq m]
G=m_dot/A   //Mass velocity in [kg/sq m.s]
Nre=Di*G/mu  //Reynolds number
//As Nre<2100,the flow is laminar
mu_w=mu_w*10^-3 //[N.s/sq m] or kg/(m.s)
//The sieder tate equation is 
hi=(k*(2.0*((m_dot*Cp)/(k*L))^(1.0/3.0)*(mu/mu_w)^(0.14)))/Di   //Heat transfer coeff in [W/sq m.K]
printf("\n The inside heat transfer coefficient is %f W/(m^2.K) ",hi);

printf('\nNOTE:Calculation mistake in last line.ie in the calculation of hi in book,please perform the calculation manually to check the answer\n")
