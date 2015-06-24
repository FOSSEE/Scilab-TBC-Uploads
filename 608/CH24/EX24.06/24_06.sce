//Problem 24.06: Determine the value of impedance if a current of (7+i16)A flows in a circuit when the supply voltage is (120+i200)V. If the frequency of the supply is 5 MHz, determine the value of the components forming the series circuit.

//initializing the variables:
V = 120 + %i*200; // in Volts
f = 5E6; // in Hz
I = 7 + %i*16;  // in amperes

//calculation:
//impedance, Z
Z = V/I
R = real(Z)
X = imag(Z) 
if ((R>0)&(X<0)) then
    printf("\n\n Result \n\n")
    C = -1/(2*%pi*f*X)
    printf("\n The series circuit thus consists of a resistor of resistance %.2f ohm and a capacitor of capacitance %.2E Farad\n",R,C)
elseif ((R>0)&(X>0)) then
    printf("\n\n Result \n\n")
    L = 2*%pi*f*X
    printf("\n The series circuit thus consists of a resistor of resistance %.2f ohm and a inductor of insuctance %.2E Henry\n",R,L)
end