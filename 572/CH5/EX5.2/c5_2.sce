// (5.2)  By steadily circulating a refrigerant at low temperature through passages in the walls of the freezer compartment, a refrigerator maintains the freezer compartment at 5C when the air surrounding the refrigerator is at 22C. The rate of heat transfer from the freezer compartment to the refrigerant is 8000 kJ/h and the power input required to operate the refrigerator is 3200 kJ/h. Determine the coefficient of performance of the refrigerator and compare with the coefficient of performance of a reversible refrigeration cycle operating between reservoirs at the same two temperatures.


//solution

//variable initialization
funcprot(0)
Qcdot = 8000                                //in kj/h
Wcycledot = 3200                            //in kj/h
Tc = 268                                    //temperature of compartment in kelvin
TH = 295                                   //temperature of the surrounding air in kelvin

beta = Qcdot/Wcycledot                     //coefficient of performance
betamax = Tc/(TH-Tc)                        //reversible coefficient of performance
printf('coefficient of performance is : \n\t beta = %f',beta)
printf('\n\n coefficient of performance of a reversible cycle is :\n\t betamax = %f',betamax) 