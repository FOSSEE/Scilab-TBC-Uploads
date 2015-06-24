//(9.8)  Consider a modification of the cycle of Example 9.4 involving reheat and regeneration. Air enters the compressor at 100 kPa, 300 K and is compressed to 1000 kPa. The temperature at the inlet to the first turbine stage is 1400 K. The expansion takes place isentropically in two stages, with reheat to 1400 K between the stages at a constant pressure of 300 kPa. A regenerator having an effectiveness of 100% is also incorporated in the cycle. Determine the thermal efficiency.


//solution

//analysis
//States 1, 2, and 3 are the same as in Example 9.4:
h1 = 300.19                                                                     //in kj/kg
h2 = 579.9                                                                      //in kj/kg
h3 =  1515.4                                                                    //in kj/kg
//The temperature at state b is the same as at state 3, so   
hb = h3

pa = 300                                                                        //in kpa
p3 = 1000                                                                       //in kpa
//from table A-22
pr3 = 450.5
pra = pr3*(pa/p3)
//Interpolating in Table A-22, we get
ha = 1095.9                                                                     //in kj/kg

p4 = 100                                                                        //in kpa
pb = 300                                                                        //in kpa
prb = pra
pr4 = prb*(p4/pb)
//Interpolating in Table A-22, we obtain
h4 = 1127.6                                                                     //in kj/kg
//Since the regenerator effectiveness is 100%,
hx = h4

eta = ((h3-ha)+(hb-h4)-(h2-h1))/((h3-hx)+(hb-ha))                               //thermal efficiency
printf('the thermal efficiency is:  %f',eta)





















