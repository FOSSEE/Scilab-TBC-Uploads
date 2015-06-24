//(9.13)   A combined gas turbine–vapor power plant has a net power output of 45 MW. Air enters the compressor of the gas turbine at 100 kPa, 300 K, and is compressed to 1200 kPa. The isentropic efficiency of the compressor is 84%. The condition at the inlet to the turbine is 1200 kPa, 1400 K. Air expands through the turbine, which has an isentropic efficiency of 88%, to a pressure of 100 kPa. The air then passes through the interconnecting heat exchanger and is finally discharged at 400 K. Steam enters the turbine of the vapor power cycle at 8 MPa, 400C, and expands to the condenser pressure of 8 kPa. Water enters the pump as saturated liquid at 8 kPa. The turbine and pump of the vapor cycle have isentropic efficiencies of 90 and 80%, respectively. (a) Determine the mass flow rates of the air and the steam, each in kg/s, and the net power developed by the gas turbine and vapor power cycle, each in MW. (b) Develop a full accounting of the net rate of exergy increase as the air passes through the gas turbine combustor. Discuss. Let T0 = 300 K, p0 = 100 kPa.

//solution
Wnetdot = 45                                                                    //in MW
T1 = 300                                                                        //in kelvin
p1 = 100                                                                        //in kpa
etac = .84                                                                      //The isentropic efficiency of the compressor
T3 = 1400                                                                       //in kelvin
p2 = 1200                                                                       //in kpa
p3 = p2
etat = .88                                                                      //isentropic efficiency of the turbine
T5 = 400                                                                        //in kelvin
p4 = 100                                                                        //in kpa
p5 = p4
T7 = 400                                                                        //in degree celcius
p7 = 8                                                                          //in MPa
etatw =.9                                                                       //isentropic efficiency of turbine of the vapor cycle
p8 = 8                                                                          //in kpa
p9 = p8
etap = .8                                                                       //isentropic efficiency of pump of the vapor cycle
T0 = 300                                                                        //in kelvin
p0 = 100                                                                        //in kpa

//analysis
//with procedure similar to that used in the examples of chapters 8 and 9,we can determine following property data
h1 = 300.19                                                                     // in kj/kg
h2 = 669.79                                                                     // in kj/kg
h3 = 1515.42                                                                    // in kj/kg
h4 = 858.02                                                                     // in kj/kg
h5 = 400.98                                                                     // in kj/kg
h6 = 183.96                                                                     // in kj/kg
h7 = 3138.30                                                                    // in kj/kg
h8 = 2104.74                                                                    // in kj/kg
h9 = 173.88                                                                     // in kj/kg
s1 = 1.7020                                                                     //in kj/kg.k
s2 = 2.5088                                                                     //in kj/kg.k
s3 = 3.3620                                                                     //in kj/kg.k   
s4 = 2.7620                                                                     //in kj/kg.k
s5 = 1.9919                                                                     //in kj/kg.k
s6 = 0.5975                                                                     //in kj/kg.k
s7 = 6.3634                                                                     //in kj/kg.k
s8 = 6.7282                                                                     //in kj/kg.k
s9 = 0.5926                                                                     //in kj/kg.k

//part(a)
//by applying mass and energy rate balances
mvdotbymgdot = (h4-h5)/(h7-h6)                                                  //ratio of mass flow rates of vapor and air

mgdot = (Wnetdot*10^3)/{[(h3-h4)-(h2-h1)] + mvdotbymgdot*[(h7-h8)-(h6-h9)]}     //mass flow rate of air in kg/s
mvdot = mvdotbymgdot*mgdot                                                      //mass flow rate of vapor in kg/s

Wgasdot = mgdot*((h3-h4)-(h2-h1))*10^-3                                         //net power developed by gas turbine in MW
Wvapdot = mvdot*((h7-h8)-(h6-h9))*10^-3                                         //net power developed by vapor cycle in MW

printf('mass flow rate of air in kg/s is:  %f',mgdot)
printf('\nmass flow rate of vapor in kg/s is:  %f',mvdot)
printf('\nnet power developed by gas turbine in MW is:  %f',Wgasdot)
printf('\nnet power developed by vapor cycle in MW is:  %f',Wvapdot)


//part(b)
//The net rate of exergy increase of the air passing through the combustor is
Edotf32 = mgdot*(h3-h2-T0*(s3-s2))*10^-3                                        //in MW
//The net rate exergy is carried out by the exhaust air stream at 5 is
Edotf51 = mgdot*(h5-h1-T0*(s5-s1))/10^3                                         //in MW
//The net rate exergy is carried out as the water passes through the condenser is
Edotf89 = mvdot*(h8-h9-T0*(s8-s9))*10^-3                                        //in MW

R = 8.314                                                                       //universal gas constant, in SI units
M = 28.97                                                                       //molar mass of air in grams
//the rate of exergy destruction for air turbine is
Eddott = mgdot*T0*(s4-s3-(R/M)*log(p4/p3))/10^3                                 //in MW
//the rate of exergy destruction for compressor is
Eddotc = mgdot*T0*(s2-s1-(R/M)*log(p2/p1))/10^3                                 //in MW
//the rate of exergy destruction for steam turbine is
Eddotst = mvdot*T0*(s8-s7)/10^3                                                 //in MW
//the rate of exergy destruction for pump is
Eddotp = mvdot*T0*(s6-s9)/10^3                                                  //in MW
//for heat exchanger
EddotHE = T0*(mgdot*(s5-s4)+mvdot*(s7-s6))/10^3                                 //in MW

printf('\n\nbalance sheet')
printf('\nNet exergy increase of the gas passing')
printf('\nthrough the combustor:\t%f',Edotf32)
printf('\nDisposition of the exergy:')
printf('\n• Net power developed')
printf('\ngas turbine cycle\t%f',Wgasdot)
printf('\nvapor cycle\t%f',Wvapdot)
printf('\n• Net exergy lost')
printf('\nwith exhaust gas at state 5\t%f',Edotf51)
printf('\nfrom water passing through condenser\t%f',Edotf89)
printf('\n• Exergy destruction')
printf('\nair turbine\t%f',Eddott)
printf('\ncompressor\t%f',Eddotc)
printf('\nsteam turbine\t%f',Eddotst)
printf('\npump\t%f',Eddotp)
printf('\nheat exchanger\t%f',EddotHE)

















































