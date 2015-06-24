//(8.7)   The heat exchanger unit of the boiler of Example 8.2 has a stream of water entering as a liquid at 8.0 MPa and exiting as a saturated vapor at 8.0 MPa. In a separate stream, gaseous products of combustion cool at a constant pressure of 1 atm from 1107 to 547C. The gaseous stream can be modeled as air as an ideal gas. Let T0 = 22C, p0 = 1 atm. Determine (a) the net rate at which exergy is carried into the heat exchanger unit by the gas stream, in MW, (b) the net rate at which exergy is carried from the heat exchanger by the water stream, in MW, (c) the rate of exergy destruction, in MW, (d) the exergetic efficiency given by Eq. 7.45.


//solution

//analysis
//The solution to Example 8.2 gives
h1 = 2758                                                                       //in kj/kg
h4 = 183.36                                                                     //in kj/kg
//from table A-22
hi = 1491.44                                                                    //in kj/kg
he = 843.98                                                                     //in kj/kg
//using the conservation of mass principle and energy rate balance, the ratio of mass flow rates of air and water is
madotbymdot = (h1-h4)/(hi-he)
//from example 8.2
mdot = 4.449e5                                                                  //in kg/h
madot =  madotbymdot*mdot                                                       //in kg/h

//part(a)
T0 = 295                                                                        //in kelvin
//from table A-22
si = 3.34474                                                                    //in kj/kg.k
se = 2.74504                                                                    //in MW
Rin = madot*(hi-he-T0*(si-se))/(3600*10^3)                                                    //The net rate at which exergy is carried into the heat exchanger unit by the gaseous stream 
printf(' the net rate at which exergy is carried into the heat exchanger unit by the gas stream, in MW is:  %f',Rin)

//part(b)
//from table A-3
s1 = 5.7432                                                                     //in kj/kg.k
//from interpolation in table A-5 gives
s4 = .5957                                                                      //in kj/kg.k
Rout = mdot*(h1-h4-T0*(s1-s4))/(3600*10^3)                                      //in MW
printf('\n\n the net rate at which exergy is carried from the heat exchanger by the water stream, in MW is:  %f',Rout)

//part(c)
Eddot = Rin-Rout                                                                //in MW
printf('\n\nthe rate of exergy destruction, in MW is:  %f',Eddot)

//part(d)
epsilon = Rout/Rin
printf('\n\nthe exergetic efficiency is:  %f',epsilon)











