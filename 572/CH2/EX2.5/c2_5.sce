//(2.5) A silicon chip measuring 5 mm on a side and 1 mm in thickness is embedded in a ceramic substrate. At steady state, the chip has an electrical power input of 0.225 W. The top surface of the chip is exposed to a coolant whose temperature is 20 degree Celcius . The heat transfer coefficient for convection between the chip and the coolant is 150 W/m2 K. If heat transfer by conduction between the chip and the substrate is negligible, determine the surface temperature of the chip, in degree Celcius.

// solution

//variable initialization

s=5*(10^-3);                     //measurement on a side in meter
wdot = -.225                      //power input in watt
Tf = 293                         //coolant temprature in kelvin
h = 150                          //heat transfer coefficient in w/m2 k

A = s^2;                         //surface area
Tb = ((-wdot/(h*A)) + Tf - 273) ;        //surface temperature in degree

printf('the surface temperature of the chip in degree celcius is:\n\t Tb = %f',Tb);