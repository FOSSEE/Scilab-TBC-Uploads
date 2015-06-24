//(3.8) A piston–cylinder assembly contains 0.9 kg of air at a temperature of 300K and a pressure of 1 bar. The air is compressed to a state where the temperature is 470K and the pressure is 6 bars. During the compression, there is a heat transfer from the air to the surroundings equal to 20 kJ. Using the ideal gas model for air, determine the work during the process, in kJ.

//solutiion

//variable initialization
m = .9                              // mass of air in kg
T1 = 300                            // initial temperature in kelvin
P1 = 1                              // initial pressure in bar
T2 = 470                            // final temperature in kelvin
P2 = 6                              // final pressure in bar
Q = -20                             // heat transfer in kj

//from table A-22 
u1 = 214.07                         // in KJ/kg
u2 = 337.32                         // in KJ/Kg
deltaU = m*(u2-u1)                  // change in internal energy in kj
W = Q - deltaU                      // in KJ/kg
printf('the work during the process in KJ is \n\t W = %f',W)
