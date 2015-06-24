//(6.4)   Referring to Example 2.4, evaluate the rate of entropy production sigmadot in kW/K, for (a) the gearbox as the system and (b) an enlarged system consisting of the gearbox and enough of its surroundings that heat transfer occurs at the temperature of the surroundings away from the immediate vicinity of the gearbox, Tf = 293 K (20C).

//solution

//variable initialization
Qdot = -1.2                        //in kilo watt
Tb = 300                           //in kelvin
Tf = 293                           //in kelvin


//part (a)
//from entropy balance 
sigmadot = -Qdot/Tb
printf('the rate of entropy production in kw/k with gearbox as system is:\n\t sigmadot = %e',sigmadot)

//part(b)
//from entropy balance 
sigmadt = -Qdot/Tf
printf('\n\nthe rate of entropy production in kw/k with gearbox + sorrounding as system is:\n\t sigmadot = %e',sigmadt)
