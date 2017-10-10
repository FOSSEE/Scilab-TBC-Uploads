clear//

//Variables

fo = 10.0 * 10**3                        //Frequency (in Hertz)
R = 100.0 * 10**3                        //Resistance (in ohm) 

//Calculation

C = 1/(2*%pi*R*fo)                   //Capacitance (in Farad) 

//Result

printf("\n Value of the capacitor C is  %0.0f  pico-Farad.",C * 10**12)
