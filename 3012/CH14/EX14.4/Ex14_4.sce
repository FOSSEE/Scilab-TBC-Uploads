
// Given:-
// For a complete reaction of CO with the theoretical amount of air
// CO + .5 O2 + 1.88N2  ----  CO2 + 1.88N2    
// Accordingly, the reaction of CO with the theoretical amount of air to form CO2, CO, O2, and N2 is
// CO + .5O2 + 1.88N2 --  zCO + z/2 O2 + (1-z)CO2 + 1.88N2

K = 0.0363                                                                       // equilibrium constant the solution to Example 14.2
p =1.0                                                                           // in atm
pref = 1.0                                                                       // in atm

// Calculations
// Solving K = (z*z^.5/(1-z))*((p/pref)*2/(5.76+z))^.5 gives
z = 0.175
yCO = 2.0*z/(5.76 + z)
yO2 = z/(5.76 + z)
yCO2 = 2.0*(1.0-z)/(5.76 + z)
yN2 = 3.76/(5.76 + z)

// Results
printf( ' The mole fraction of CO is: %.3f ',yCO)
printf( ' The mole fraction of O2 is: %.3f ',yO2)
printf( ' The mole fraction of CO2 is:  %.3f',yCO2)
printf( ' The mole fraction of N2 is:  %.3f',yN2)
