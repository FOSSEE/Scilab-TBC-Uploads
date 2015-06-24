//All the quantities are expressed in SI units

p0 = 30*101000;                            //reservoir pressure
T0 = 3500;                                 //reservoir temperature
R = 520;                                   //specific gas constant
gam = 1.22;                                //ratio of specific heats
A_star = 0.4;                              //rocket nozzle throat area

//the mass flow rate using the closed form analytical expression
//from problem 10.5 can be given as
m_dot = p0*A_star*sqrt(gam/R/T0*((2/(gam+1))^((gam+1)/(gam-1))));

printf("\nRESULTS\n---------\nThe mass flow rate is:\n        m_dot = %3.1f kg/s\n",m_dot)