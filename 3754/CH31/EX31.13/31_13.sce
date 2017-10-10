clear//

//Variables

L = 0.33                       //Inductance (in Henry)
C1 = 0.065 * 10**-12           //Capacitance (in Farad)  
C2 = 1.0 * 10**-12             //Capacitance (in Farad)
R = 5.5 * 10**3                //Resistance (in ohm)              

//Calculation

fs = 1/(2*%pi*(L*C1)**0.5) //Series Resonant frequency (in Hertz)
Qfactor = 2*%pi*fs*L/R     //Q-factor

//Result

printf("\n Series resonant frequency is  %0.2f  MHz.\nQ-factor of the crystal is  %0.1f .",fs*10**-6,Qfactor)
