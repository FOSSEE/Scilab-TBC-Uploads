//All the quantities are expressed in SI units

p0 = 30*101000;                            //reservoir pressure
T0 = 3500;                                 //reservoir temperature
R = 520;                                   //specific gas constant
gam = 1.22;                                //ratio of specific heats
A_star = 0.4;                              //rocket nozzle throat area
pe = 5529;                                 //rocket nozzle exit pressure equal to ambient pressure at 20 km altitude

//(a)
//the density of air in the reservoir can be calculated as
rho0 = p0/R/T0;

//from eq.(8.46)
rho_star = rho0*(2/(gam+1))^(1/(gam-1));

//from eq.(8.44)
T_star = T0*2/(gam+1);
a_star = sqrt(gam*R*T_star);
u_star = a_star;
m_dot = rho_star*u_star*A_star;

//rearranging eq.(8.42)
Me = sqrt(2/(gam-1)*(((p0/pe)^((gam-1)/gam)) - 1));
Te = T0/(1+(gam-1)/2*Me*Me);
ae = sqrt(gam*R*Te);
ue = Me*ae;

//thus the thrust can be calculated as
T = m_dot*ue;
T_lb = T*0.2247;

//(b)
//rearranging eq.(10.32)
Ae = A_star/Me*((2/(gam+1)*(1+(gam-1)/2*Me*Me))^((gam+1)/(gam-1)/2));

printf("\nRESULTS\n---------\n(a)The thrust of the rocket is:\n        T = %1.2f x 10^6 N = %6.0f lb\n\n(b)\nThe nozzle exit area is:\n        Ae = %2.1f m2\n",T/1e6,T_lb,Ae)