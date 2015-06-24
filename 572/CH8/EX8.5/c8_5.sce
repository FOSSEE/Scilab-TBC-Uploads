//Consider a regenerative vapor power cycle with one open feedwater heater. Steam enters the turbine at 8.0 MPa, 480C and expands to 0.7 MPa, where some of the steam is extracted and diverted to the open feedwater heater operating at 0.7 MPa. The remaining steam expands through the second-stage turbine to the condenser pressure of 0.008 MPa. Saturated liquid exits the open feedwater heater at 0.7 MPa. The isentropic efficiency of each turbine stage is 85% and each pump operates isentropically. If the net power output of the cycle is 100 MW, determine (a) the thermal efficiency and (b) the mass flow rate of steam entering the first turbine stage, in kg/h.

//solution

//variable initialization
T1 = 480                                                                        //temperature of steam entering the turbine in degree celcius
p1 = 8                                                                          //pressure of steam entering the turbine in MPa
Pcond = .008                                                                    //condenser pressure in MPa
etat = .85                                                                      //turbine efficiency
Wcycledot = 100                                                                 //net power output of the cycle


//analysis
//with the help of steam tables
h1 = 3348.4                                                                     //in kj/kg
h2 = 2832.8                                                                     //in kj/kg
s2 = 6.8606                                                                     //in kj/kg.k
h4 = 173.88                                                                     //in kj/kg
//With s3s = s2, the quality at state 3s is x3s=  0.8208; using this, we get
h3s = 2146.3                                                                    //in kj/kg
//The specific enthalpy at state 3 can be determined using the efficiency of the second-stage turbine
h3 = h2 - etat*(h2-h3s)
//State 6 is saturated liquid at 0.7 MPa. Thus,
h6 = 697.22                                                                     //in kj/kg
//for determining specific enthalpies at states 5 and 7 ,we have
p5 = .7                                                                         //in MPa
p4 = .008                                                                       //in MPa
p7 = 8                                                                          //in MPa
p6 = .7                                                                         //in MPa
v4 = 1.0084e-3                                                                  //units in m^3/kg,obtained from steam tables
v6 = 1.1080e-3                                                                  //units in m^3/kg,obtained from steam tables

h5 = h4 + v4*(p5-p4)*10^6*10^-3                                                 //in kj/kg
h7 = h6 + v6*(p7-p6)*10^3                                                       //in kj/kg

//Applying mass and energy rate balances to a control volume enclosing the open heater, we find the fraction y of the flow extracted at state 2 from
y = (h6-h5)/(h2-h5)

//part(a)
wtdot = (h1-h2) + (1-y)*(h2-h3)                                                 //the total turbine work output, units in KJ/Kg
wpdot = (h7-h6) + (1-y)*(h5-h4)                                            //The total pump work per unit of mass passing through the first-stage turbine,in KJ/kg
qindot = h1 - h7                                                                //in kj/kg

eta = (wtdot-wpdot)/qindot
printf('the thermal efficiency is:  %f',eta)

//part(b)
m1dot = (Wcycledot*3600*10^3)/(wtdot-wpdot)
printf('\nthe mass flow rate of steam entering the first turbine stage, in kg/h is:  %e',m1dot)




























