//Compressed air enters a counterflow heat exchanger operating at steady state at 610 K, 10 bar and exits at 860 K, 9.7 bar. Hot combustion gas enters as a separate stream at 1020 K, 1.1 bar and exits at 1 bar. Each stream has a mass flow rate of 90 kg/s. Heat transfer between the outer surface of the heat exchanger and the surroundings can be ignored. Kinetic and potential energy effects are negligible. Assuming the combustion gas stream has the properties of air, and using the ideal gas model for both streams, determine for the heat exchanger(a) the exit temperature of the combustion gas, in K. (b) the net change in the flow exergy rate from inlet to exit of each stream, in MW. (c) the rate exergy is destroyed, in MW. Let T0 = 300 K, p0 = 1 bar.


//solution

//variable initialization
T1 = 610                                                   //temperature of the air entering heat exchanger in kelvin
p1 = 10                                                    //pressure of the air entering heat exchanger in bar
T2 = 860                                                   //temperature of the air exiting the heat exchanger in kelvin
p2 = 9.7                                                   //pressure of the air exiting the heat exchanger in bar
T3 = 1020                                                  //temperature of entering hot combustion gas in kelvin
p3 = 1.1                                                  //pressure of entering hot  combustion gas in bar
p4 = 1                                                     //pressure of exiting hot combustion gas in bar
mdot = 90                                               //mass flow rate in kg/s
T0 = 300                                                   //in kelvin
p0 = 1                                                     //in bar

//part (a)
//from table A-22
h1 = 617.53                                               //in kj/kg
h2 = 888.27                                               //in kj/kg
h3 = 1068.89                                              //in kj/kg

//from reduction of mass and energy rate balances for the control volume at steady state 
h4 = h3+h1-h2

//using interpolation in table A-22 gives
T4 = 778                                                 //in kelvin
printf('the exit temperature of the combustion gas in kelvin is:\n\tT4 = %f',T4)


//part(b)
//from table A-22
s2 = 2.79783                                           //in kj/kg.k
s1 = 2.42644                                           //in kj/kg.k

deltaR = (mdot*((h2-h1)-T0*(s2-s1-(8.314/28.97)*log(p2/p1))))/1000

//from table A-22
s4 = 2.68769                                          //in kj/kg.k
s3 = 2.99034                                          //in kj/kg.k

deltRc = mdot*((h4-h3)-T0*(s4-s3-(8.314/28.97)*log(p4/p3)))/1000

printf('\nthe net change in the flow exergy rate from inlet to exit of compressed gas in MW is:\n\t  deltaR = %f',deltaR)
printf('\nthe net change in the flow exergy rate from inlet to exit of hot combustion gas in MW is:\n\tdeltRc =%f ',deltRc)

//part(c)
//from an exergy rate balance
Eddot = -deltaR-deltRc

printf('\nthe rate exergy  destroyed, in MW is:Eddot = %f',Eddot)













