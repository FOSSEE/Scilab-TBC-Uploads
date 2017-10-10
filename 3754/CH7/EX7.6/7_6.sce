clear//

//Variables

Q = 90.0                 //Q-factor
L = 15.0 * 10**-6        //Inductance (in Henry)
f = 10.0 * 10**6         //Frequency (in Hertz)  

//Calculation

Ro = 2*%pi*f*L/Q     //d.c. resistance (in ohm)

//Result

printf("\n d.c. resistance of coil is  %0.1f  ohm.",Ro)
