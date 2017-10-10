//Chapter 15: Antennas for Special Applications
//Example 15-26.1
clc;

//Variable Initialization
t1 = 0.3e-9     //Echo time off the top of pavement (s)
t2 = 2.4e-9     //Echo time off bottom of pavement (s)
t3 = 14.4e-9    //Echo time off bottom of water pocket (s)
er_1 = 4        //Relative permittivity of pavement (unitless)
er_2 = 81       //Relative permittivity of water pocket (unitless)
c = 3e8         //Speed of light (m/s)

//Calculations
d1 = (t2-t1)*c/(2*sqrt(er_1))
d2 = (t3-t2)*c/(2*sqrt(er_2))

//Result
mprintf("The thickness of pavement is %.2f m",d1)
mprintf("\nThe thickness of water pocket is %.1f m",d2)
