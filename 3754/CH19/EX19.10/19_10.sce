clear//

//Case (a):

//Variables

f = 50.0                             //Frequency (in Hertz)
g = 0.05                             //Ripple factor
RL = 100.0                           //Resistance (in ohm)
w = 2 * %pi * f                  //Angular frequency (in radians per second)       

//Calculation

L = RL / (3 * 2**0.5 * w * g)        //Inductance (in Henry) 

//Result

printf("\n Value of inductance is  %0.1f  H.",L)

//Case (b):

//Variables

f = 400.0                            //Frequency (in Hertz)
g = 0.05                             //Ripple factor
RL = 100.0                           //Resistance (in ohm)
w = 2 * %pi * f                  //Angular frequency (in radians per second)       

//Calculation

L = RL / (3 * 2**0.5 * w * g)        //Inductance (in Henry) 

//Result

printf("\n New Value of inductance is  %0.3f  H.",L)
