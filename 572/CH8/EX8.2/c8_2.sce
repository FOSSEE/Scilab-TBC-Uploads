//(8.2)  Reconsider the vapor power cycle of Example 8.1, but include in the analysis that the turbine and the pump each have an isentropic efficiency of 85%. Determine for the modified cycle (a) the thermal efficiency, (b) the mass flow rate of steam, in kg/h, for a net power output of 100 MW, (c) the rate of heat transfer Qindot into the working fluid as it passes through the boiler, in MW, (d) the rate of heat transfer  Qoutdotfrom the condensing steam as it passes through the condenser, in MW, (e) the mass flow rate of the condenser cooling water, in kg/h, if cooling water enters the condenser at 15C and exits as 35C. Discuss the effects on the vapor cycle of irreversibilities within the turbine and pump.


//solution

etat= .85                                                                       //given that the turbine and the pump each have an isentropic efficiency of 85%
//analysis
//State 1 is the same as in Example 8.1, so
h1 = 2758.0                                                                     //in kj/kg
s1 = 5.7432                                                                     //in kj/kg.k

//from example 8.1
h1 = 2758                                                                       //in kj/kg
h2s = 1794.8                                                                    //in kj/kg

h2 = h1 - etat*(h1-h2s)                                                         //in kj/kg
//State 3 is the same as in Example 8.1, so
h3 = 173.88                                                                     //in kj/kg

//from solution to example 8.1
wpdot = 8.06/etat                                                               //where the value 8.06 is obtained from example 8.1

h4 = h3 + wpdot

//part(a)
eta = ((h1-h2)-(h4-h3))/(h1-h4)                                                 //thermal efficiency
printf('thermal efficiency is:  %f',eta)

//part(b)
Wcycledot = 100                                                                 //given,a net power output of 100 MW
mdot = (Wcycledot*10^3*3600)/((h1-h2)-(h4-h3))
printf('\n\nthe mass flow rate of steam, in kg/h, for a net power output of 100 MW is:  %e',mdot)

//part(c)
Qindot = mdot*(h1-h4)/(3600 * 10^3)
printf('\n\nthe rate of heat transfer Qindot into the working fluid as it passes through the boiler, in MW is:  %f',Qindot)

//part(d)
Qoutdot = mdot*(h2-h3)/(3600*10^3)
printf('\n\nthe rate of heat transfer  Qoutdotfrom the condensing steam as it passes through the condenser, in MW is:  %f',Qoutdot)

//part(e)
//from table A-2
hcwout = 146.68                                                      //in kj/kg
hcwin = 62.99                                                        //in kj/kg
mcwdot = (Qoutdot*10^3*3600)/(hcwout-hcwin)
printf('\n\nthe mass flow rate of the condenser cooling water, in kg/h is:  %e',mcwdot)


















