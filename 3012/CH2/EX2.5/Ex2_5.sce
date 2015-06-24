// Given:-
s=5*(10**-3)                       // measurement on a side in meter
wdot = -0.225                        // power input in watt
Tf = 293.0                           // coolant temprature in kelvin
h = 150.0                            // heat transfer coefficient in w/m2 k
A = s**2                            // surface area

// Calculation
Tb = ((-wdot/(h*A)) + Tf - 273)     // surface temperature in degree

// Result
printf( 'The surface temperature of the chip in degree celcius is: %f ',Tb);
