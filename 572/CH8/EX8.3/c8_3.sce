//(8.3)  Steam is the working fluid in an ideal Rankine cycle with superheat and reheat. Steam enters the first-stage turbine at 8.0 MPa, 480C, and expands to 0.7 MPa. It is then reheated to 440C before entering the second-stage turbine, where it expands to the condenser pressure of 0.008 MPa. The net power output is 100 MW. Determine (a) the thermal efficiency of the cycle, (b) the mass flow rate of steam, in kg/h, (c) the rate of heat transfer Qoutdot from the condensing steam as it passes through the condenser, in MW. Discuss the effects of reheat on the vapor power cycle.

//solution

//variable initialization
T1 = 480                                                                        //temperature of steam entering the first stage turbine in degree celcius
p1 = 8                                                                          //pressure of steam entering the first stage turbine in MPa
p2 = .7                                                                         //pressure of steam exiting the first stage turbine in MPa
T3 = 440                                                                        //temperature of steam before entering the second stage turbine 
Pcond = .008                                                                    //condenser pressure in MPa
Wcycledot = 100                                                                 //the net power output in MW

//analysis
//from table A-4
h1 = 3348.4                                                                     //in kj/kg
s1 = 6.6586                                                                     //in kj/kg.k
s2 = s1                                                                         //isentropic expansion through the first-stage turbine
//from table A-3
sf = 1.9922                                                                     //in kj/kg.k
sg = 6.708                                                                      //in kj/kg.k
hf = 697.22                                                                     //in kj/kg
hfg = 2066.3                                                                    //in kj/kg

x2 = (s2-sf)/(sg-sf)
h2 = hf + x2*hfg
//State 3 is superheated vapor with p3 = 0.7 MPa and T3=  440C, so from Table A-4
h3 = 3353.3                                                                     //in kj/kg
s3 = 7.7571                                                                     //in kj/kg.k
s4 = s3                                                                         //isentropic expansion through the second-stage turbine
//for determing quality at state 4,from table A-3
sf = 0.5926                                                                     //in kj/kg.k
sg = 8.2287                                                                     //in kj/kg.k
hf = 173.88                                                                     //in kj/kg
hfg = 2403.1                                                                    //in kj/kg

x4 = (s4-sf)/(sg-sf)
h4 = hf + x4*hfg

//State 5 is saturated liquid at 0.008 MPa, so
h5 = 173.88
//the state at the pump exit is the same as in Example 8.1, so
h6 = 181.94

//part(a)
eta = ((h1-h2)+(h3-h4)-(h6-h5))/((h1-h6)+(h3-h2))
printf('the thermal efficiency of the cycle is:  %f',eta)

//part(b)
mdot = (Wcycledot*3600*10^3)/((h1-h2)+(h3-h4)-(h6-h5))
printf('\n\nthe mass flow rate of steam, in kg/h is:  %e',mdot)

//part(c)
Qoutdot = (mdot*(h4-h5))/(3600*10^3)
printf('\n\nthe rate of heat transfer Qoutdot from the condensing steam as it passes through the condenser, in MW is:  %f',Qoutdot)























