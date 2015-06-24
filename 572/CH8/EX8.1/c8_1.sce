//(8.1)...Steam is the working fluid in an ideal Rankine cycle. Saturated vapor enters the turbine at 8.0 MPa and saturated liquid exits the condenser at a pressure of 0.008 MPa. The net power output of the cycle is 100 MW. Determine for the cycle (a) the thermal efficiency, (b) the back work ratio, (c) the mass flow rate of the steam, in kg/h, (d) the rate of heat transfer,Qindot , into the working fluid as it passes through the boiler, in MW, (e) the rate of heat transfer,Qoutdot from the condensing steam as it passes through the condenser, in MW, (f) the mass flow rate of the condenser cooling water, in kg/ h, if cooling water enters the condenser at 15C and exits at 35C.


//solution

//variable initialization
p1 = 8                                                                   //pressure of saturated vapor entering the turbine in MPa
p3 = .008                                                                //pressure of saturated liquid exiting the condenser in MPa
Wcycledot = 100                                                          //the net power output of the cycle in MW

//analysis
//from table A-3
h1 = 2758.0                                                              //in kj/kg
s1 = 5.7432                                                              //in kj/kg.k
s2 = s1
sf = .5926                                                               //in kj/kg.k
sg = 8.2287                                                              //in kj/kg.k
hf = 173.88                                                              //in kj/kg
hfg = 2403.1                                                             //in kj/kg
v3 = 1.0084e-3                                                           //in m^3/kg

x2 = (s2-sf)/(sg-sf)                                                     //quality at state 2
h2 = hf + x2*hfg
//State 3 is saturated liquid at 0.008 MPa, so
h3 = 173.88                                                              //in kj/kg

p4 = p1
h4 = h3 + v3*(p4-p3)*10^6*10^-3                                         //in kj/kg

//part(a)
//Mass and energy rate balances for control volumes around the turbine and pump give, respectively
wtdot = h1 - h2
wpdot = h4-h3

//The rate of heat transfer to the working fluid as it passes through the boiler is determined using mass and energy rate balances as
qindot = h1-h4

eta = (wtdot-wpdot)/qindot                                            //thermal efficiency)
printf('the thermal efficiency for the cycle is:  %f',eta)

//part(b)
bwr = wpdot/wtdot                                                     //back work ratio
printf('\n\nthe back work ratio is:  %e',bwr)

//part(c)
mdot = (Wcycledot*10^3*3600)/((h1-h2)-(h4-h3))                        //mass flow rate in kg/h
printf('\n\nthe mass flow rate of the steam in kg/h is:  %e',mdot)
 
//part(d)
Qindot = mdot*qindot/(3600*10^3)                                     //in MW
printf('\n\nthe rate of heat transfer,Qindot , into the working fluid as it passes through the boiler, in MW is:  %f',Qindot)

//part(e)
Qoutdot = mdot*(h2-h3)/(3600*10^3)                                   //in MW
printf('\n\nthe rate of heat transfer,Qoutdot from the condensing steam as it passes through the condenser, in MW is:  %f',Qoutdot)

//part(f)
//from table A-2
hcwout = 146.68                                                      //in kj/kg
hcwin = 62.99                                                        //in kj/kg
mcwdot = (Qoutdot*10^3*3600)/(hcwout-hcwin)                          //in kg/h
printf('\n\nthe mass flow rate of the condenser cooling water, in kg/ h is:  %e',mcwdot)
























