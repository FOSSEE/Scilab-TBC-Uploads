clear;
clc;
printf("\t\t\tExample Number 6.12\n\n\n");
// heating of liquid bismuth in tube 
// example 6.11 (page no.-305-6) 
// solution

m_dot = 4.5;// [Kg/s] flow rate of bismuth
d = 0.05;// [m] diameter of steel tube
Ti = 415;// [degree celsius] initial temperature of bismuth
Tf = 440;// [degree celsius] final temperature of bismuth
// because a constant heat flux is maintained, we may use equation 6-47 to calculate the heat transfer coefficient.
// the properties of bismuth are evaluated at the average bulk temperature of 
Ta = (Ti+Tf)/2;// [degree celsius]
mu = 1.34*10^(-3);// [Kg/m s] viscosity
Cp = 149;// [J/Kg degree celsius] heat 
k = 15.6;// [W/m degree celsius]
Pr = 0.013;// prandtl number
// the total transfer is calculated from
q = m_dot*Cp*(Tf-Ti);// [W]
// we calculate reynolds and peclet number as 
G = m_dot/(%pi*d^(2)/4);
Re_d = d*G/mu;
Pe = Re_d*Pr;
// the heat transfer coefficient is calculated from equation 6-47
Nu_d = 4.82+0.0185*Pe^(0.827);
h = Nu_d*k/d;// [W/square meter degree celsius]
// the total required surface area of the tube may now be computed from q=h*A*DT
// where we use the temperature difference of
DT = 20;// [degree celsius] 
A = q/(h*DT);// [square meter] 
// the area in turn can be expressed in terms of tube length 
L = A/(%pi*d);// [m]
printf("Length of tube required to effect the heat transfer is %f m",L);
