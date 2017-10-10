clear//

//Variables

fo = 455.0 * 10**3         //Resonant frequency (in Hertz)
BW = 10.0 * 10**3          //Bandwidth (in Hertz)
XL = 1255.0                //Inductive reactance (in ohm)

//Calculation

Qo = fo / BW               //Quality factor
R = XL / Qo                //Resistance (in ohm)
L = XL / (2*%pi*fo)    //Inductance (in Henry)
C = 1 / (XL*2*%pi*fo)  //Capacitance (in Farad)
Zp = L / (C*R)             //Circuit impedance (in ohm)

//Result

printf("\n The value of circuit impedance at resonance is  %0.0f  kilo-ohm.",Zp * 10**-3)
