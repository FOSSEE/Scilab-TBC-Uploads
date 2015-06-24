//(11.1)  A cylindrical tank containing 4.0 kg of carbon monoxide gas at 50C has an inner diameter of 0.2 m and a length of 1 m. Determine the pressure, in bar, exerted by the gas using (a) the generalized compressibility chart, (b) the ideal gas equation of state, (c) the van der Waals equation of state, (d) the Redlich–Kwong equation of state. Compare the results obtained.

//solution

//variable initialization
m = 4                                                                           //mass of carbon monoxide in kg
T = 223                                                                         //temperature of carbon monoxide in kelvin
D = .2                                                                          //inner diameter of cylinder in meter
L = 1                                                                           //length of the cylinder in meter

//analysis
V = (%pi*D^2/4)*L                                                               //volume occupied by the gas in m^3
M = 28                                                                          //molar mass in kg/kmol
vbar = M*(V/m)                                                                  //The molar specific volume in m^3/kmol

//part(a)
//From Table A-1 for CO
Tc = 133                                                                        //in kelvin
Pc = 35                                                                         //in bar
Tr = T/Tc                                                                       //reduced temperature
Rbar = 8314                                                                     //universal gas constant in N.m/kmol.K
vrdash = (vbar*Pc&10^5)/(Rbar*Tc)                                               //pseudoreduced specific volume
Z = .9

p = (Z*Rbar*T/vbar)*10^-5                                                       //in bar
printf('part(a)the pressure in bar is:  %f',p)

//part(b)
//The ideal gas equation of state gives
p = (Rbar*T/vbar)/10^5                                                          //in bar
printf('\npart(b)the pressure in bar is:  %f',p)

//part(c)
//For carbon monoxide, the van der Waals constants a and b can be read directly from Table A-24
a = 1.474                                                                       //in (m^3/kmol)^2
b = .0395                                                                       //in m^3/kmol

p = (Rbar*T/(vbar-b))/10^5 - a/vbar^2
printf('\npart(c)the pressure in bars is:  %f',p)

//part(d)
//For carbon monoxide, the Redlich–Kwong constants can be read directly from Table A-24
a = 17.22                                                                       //in m^6*K^.5/kmol^2
b = .02737                                                                      //in m^3/kmol

p = (Rbar*T/(vbar-b))/10^5 - a/[vbar*(vbar+b)*T^.5]
printf('\npart(d)the pressure in bar is:  %f',p)






























