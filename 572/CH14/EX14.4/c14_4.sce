//(14.4)  One kilomole of carbon monoxide reacts with the theoretical amount of air to form an equilibrium mixture of CO2, CO, O2, and N2 at 2500 K and 1 atm. Determine the equilibrium composition in terms of mole fractions, and compare with the result of Example 14.2.



//solution

//For a complete reaction of CO with the theoretical amount of air
//CO + .5 O2 + 1.88N2  ----->  CO2 + 1.88N2    
//Accordingly, the reaction of CO with the theoretical amount of air to form CO2, CO, O2, and N2 is
//CO + .5O2 + 1.88N2 --->  zCO + z/2 O2 + (1-z)CO2 + 1.88N2

K = .0363                                                                       //equilibrium constant the solution to Example 14.2
p =1                                                                            //in atm
pref = 1                                                                        //in atm

//solving K = (z*z^.5/(1-z))*((p/pref)*2/(5.76+z))^.5 gives
z = .175
yCO = 2*z/(5.76 + z)
yO2 = z/(5.76 + z)
yCO2 = 2*(1-z)/(5.76 + z)
yN2 = 3.76/(5.76 + z)
printf('the mole fraction of CO is:  %f',yCO)
printf('\nthe mole fraction of O2 is:  %f',yO2)
printf('\nthe mole fraction of CO2 is:  %f',yCO2)
printf('\nthe mole fraction of N2 is:  %f',yN2)