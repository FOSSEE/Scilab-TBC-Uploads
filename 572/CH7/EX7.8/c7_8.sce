//(7.8) Suppose the system of Example 4.10 is one option under consideration for utilizing the combustion products discharged from an industrial process. (a) Develop a full accounting of the net exergy carried in by the combustion products. (b) Discuss the design implications of the results.


//solution

//variable initialization
m1dot = 69.78                                                     //in kg/s
p1 = 1                                                            //in bar
T1 = 478                                                          //in kelvin
T2 = 400                                                          //in kelvin
p2 = 1                                                            //in bar
p3 = .275                                                         //in Mpa
T3 = 38.9                                                         //in degree celcius
m3dot = 2.08                                                      //in kg/s
T4 = 180                                                          //in degree celcius
p4 = .275                                                         //in Mpa
p5 = .07                                                          //in bar
x5 = .93
Wcvdot = 876.8                                                      //in kW
T0 = 298                                                          //in kelvin


//part(a)
//from table A-22
h1 = 480.35                                                        //in kj/kg
h2 = 400.97                                                        //in kj/kg
s1 = 2.173                                                         //in kj/kg
s2 = 1.992                                                         //in kj/kg

netRE = m1dot*(h1-h2-T0*(s1-s2-(8.314/28.97)*log(p1/p2)))          //the net rate exergy  carried into the control volume


//from table A-2E
h3 = 162.82                                                        //in kj/kg
s3 = .5598                                                         //in kj/kg.k
//Using saturation data at 0.07 bars from Table A-3
h5 = 2403.27                                                       //in kj/kg
s5 = 7.739                                                         //in kj/kg.k

netREout = m3dot*(h5-h3-T0*(s5-s3))                                //the net rate exergy carried out by the water stream

//from table A-4
h4 = 2825                                                          //in kj/kg
s4 = 7.2196                                                        //in kj/kg.k

//from an exergy rate balance applied to a control volume enclosing the steam generator
Eddot = netRE + m3dot*(h3-h4-T0*(s3-s4))                           //the rate exergy is destroyed in the heat-recovery steam generator

//from an exergy rate balance applied to a control volume enclosing the turbine
EdDot = -Wcvdot + m3dot*(h4-h5-T0*(s4-s5))                         //the rate exergy is destroyed in the tpurbine


printf('balance sheet')
printf('\nNet rate of exergy in:\t%f',netRE)
printf('\nDisposition of the exergy:')
printf('\n• Rate of exergy out')
printf('\npower developed\t%f',1772.8-netREout-Eddot-EdDot)
printf('\nwater stream\t%f',netREout)
printf('\n• Rate of exergy destruction')
printf('\nheat-recovery steam generator\t%f',Eddot)
printf('\nturbine\t%f',EdDot)






