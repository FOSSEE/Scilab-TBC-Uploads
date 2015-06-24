//(11.10)  A mixture consisting of 0.18 kmol of methane (CH4) and 0.274 kmol of butane (C4H10) occupies a volume of 0.241 m3 at a temperature of 238C. The experimental value for the pressure is 68.9 bar. Calculate the pressure, in bar, exerted by the mixture by using (a) the ideal gas equation of state, (b) Kay’s rule together with the generalized compressibility chart, (c) the van der Waals equation, and (d) the rule of additive pressures employing the generalized compressibility chart. Compare the calculated values with the known experimental value.

//solution

//analysis
V = .241                                                                        //volume of the mixture in m^3
T = 511                                                                         //temperature of the mixture in kelvin
n1 = .18                                                                        //number of moles of methane in kmol
n2 = .274                                                                       //number of moles of butane in kmol
n = n1 + n2                                                                     //The total number of moles of mixture
y1 = n1/n                                                                       //mole fraction of methane
y2 = n2/n                                                                       //mole fraction of butane
Rbar = 8314                                                                     //universal gas constant in (N.m)/(kmol.K)
vbar = V/(n)                                                                    //The specific volume of the mixture on a molar basis in m^3/kmol

//part(a)
p = (Rbar*T/vbar)*10^-5                                                         //in bar
printf('the pressure in bar obtained using ideal gas equation is:  %f',p)

//part(b)
//from table A-1
Tc1 = 191                                                                        //critical temperature for methane in kelvin 
Pc1 = 46.4                                                                      //critical pressure for methane in bar
Tc2 = 425                                                                       //critical temperature for butane in kelvin
Pc2 = 38                                                                        //critical pressure for butane in bar

Tc = y1*Tc1 + y2*Tc2                                                            //critical temperature in kelvin
Pc = y1*Pc1 + y2*Pc2                                                            //critical pressure in bar

TR = T/Tc                                                                       //reduced temperature of the mixture
vRdash= vbar*Pc/(Rbar*Tc)

Z = .88
p = ((Z*Rbar*T)/vbar)*10^-5                                                     //mixture pressure in bar
printf('\npressure obtained using Kay’s rule together with the generalized compressibility chart, is:  %f',p)

//part(c)
//Table A-24 gives the following van der Waals constants values for methane
a1 = 2.293                                                                      //in (m^3/kmol)^2
b1 = .0428                                                                      //in m^3/kmol
//Table A-24 gives the following van der Waals constants values for butane
a2 = 13.86                                                                      //in (m^3/kmol)^2
b2 = .1162                                                                      //in m^3/kmol

a = (y1*a1^.5 + y2*a2^.5)^2                                                     //in bar*(m^3/kmol)^2
b = y1*b1+y2*b2                                                                 //in m^3/kmol
//from van der Waals equation
p = ((Rbar*T)/(vbar-b))*10^-5 - a/(vbar^2)
printf('\nthe pressure in bar from van der Waals equation is:  %f ',p)

//part(d)
//for methane
TR1 = T/Tc1
vR1dash = (.241/.18)*10^5*Pc1/(Rbar*Tc1)
Z1 = 1
//for butane
TR2 = T/Tc2
vR2dash = (.88*10^5*Pc2)/(Rbar*Tc2)
Z2 = .8
Z = y1*Z1 + y2*Z2
//Accordingly, the same value for pressure as determined in part (b) using Kay’s rule results:
p = 70.4
printf('\nthe pressure in bar obtained using the rule of additive pressures employing the generalized compressibility chart is:  %f',p)






















