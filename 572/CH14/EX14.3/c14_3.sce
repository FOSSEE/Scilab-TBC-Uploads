//(14.3)  Measurements show that at a temperature T and a pressure of 1 atm, the equilibrium mixture for the system of Example 14.2 has the composition yCO = 0.298,yO2 = .149, yCO2 = .553.Determine the temperature T of the mixture, in K.


//solution
yCO = .298
//solving yCO = 2z/(2 + z)
z = 2*yCO/(2 - yCO)

p = 1                                                                           //in atm
pref = 1                                                                        //in atm

K = (z/(1-z))*(z/(2 + z))^.5*(p/pref)^.5

//with this value of K, table A-27 gives
T = 2881
printf('the temperature T of the mixture in kelvin is:  %f',T)
