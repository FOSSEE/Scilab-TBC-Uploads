//(9.6) Reconsider Example 9.4, but include in the analysis that the turbine and compressor each have an isentropic efficiency of 80%. Determine for the modified cycle (a) the thermal efficiency of the cycle, (b) the back work ratio, (c) the net power developed, in kW. 

//solution


etat = .8                                                                       //turbine efficiency
etac = .8                                                                       //compressor efficiency
//part(a)
wtdots = 706.9                                                                  //The value of wtdots is determined in the solution to Example 9.4 as 706.9 kJ/kg
//The turbine work per unit of mass is
wtdot = etat*wtdots                                                             //in kj/kg

wcdots = 279.7                                                                  //The value of wcdots is determined in the solution to Example 9.4 as 279.7 kJ/kg
//For the compressor, the work per unit of mass is
wcdot = wcdots/etac                                                             //in kj/kg

h1 = 300.19                                                                     //h1 is from the solution to Example 9.4, in kj/kg
h2 = h1 + wcdot                                                                 //in kj/kg

h3 = 1515.4                                                                     //h3 is from the solution to Example 9.4, in kj/kg
qindot = h3-h2                                                                  //The heat transfer to the working fluid per unit of mass flow in kj/kg
eta = (wtdot-wcdot)/qindot                                                      //thermal efficiency
printf('the thermal efficiency is:  %f',eta)

//part(b)
bwr = wcdot/wtdot                                                               //back work ratio
printf('\nthe back work ratio is:  %f',bwr)

//part(c)
mdot = 5.807                                                                    //in kg/s, from example 9.4
Wcycledot = mdot*(wtdot-wcdot)                                                  //The net power developed by the cycle in kw
printf('\nthe net power developed, in kW. is:  %f',Wcycledot)










