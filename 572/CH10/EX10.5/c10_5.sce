//(10.5)  Reconsider Example 10.4, but include in the analysis that the compressor and turbine each have an isentropic efficiency of 80%. Determine for the modified cycle (a) the net power input, in kW, (b) the refrigeration capacity, in kW, (c) the coefficient of performance, and interpret its value.

//solution
funcprot(0)

//part(a)
wcdots = 99.99                                                                  //work per unit mass for the isentropic compression determined with data from the solution in Example 10.4 in kj/kg
mdot = 1.807                                                                    //mass flow rate in kg/s from 10.4
etac = .8                                                                       //isentropic efficiency of compressor
Wcdot = mdot*wcdots/etac                                                        //The power input to the compressor in kw

//Using data form the solution to Example 10.4 gives
wtdots =81.19                                                                   //in kj/kg
etat = .8                                                                       //isentropic efficiency of turbine
Wtdot = mdot*etat*wtdots                                                        //actual turbine work in kw

Wdotcycle = Wcdot-Wtdot                                                         //The net power input to the cycle in kw
printf('the net power input in kw is:  %f',Wdotcycle)

//part(b)
h3 = 300.19                                                                     //in kj/kg
h4 = h3 -Wtdot/mdot
//from table A-22
h1 = 270.11                                                                     //in kj/kg
Qindot = mdot*(h1-h4)                                                            //refrigeration capacity in kw
printf('\nthe refrigeration capacity in kw is:  %f',Qindot)

//part(c)
beta = Qindot/Wdotcycle                                                         //coefficient of performance 
printf('\nthe coefficient of performance is:  %f',beta)









