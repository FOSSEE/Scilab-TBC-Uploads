clear//

//Variables

R1 = 1.0 * 10**3                //Resistance (in ohm)
R2 = 100.0 * 10**3              //Resistance (in ohm)
f1 = 159.0                      //Frequency (in Hertz)

//Calculation

C = 1.0/(2*%pi*R2*f1)       //Capacitance (in Farad) 

//Result

printf("\n Capacitance required in the circuit is  %0.2f  micro-Farad.",C * 10**6)
