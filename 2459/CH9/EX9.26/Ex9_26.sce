//chapter9
//example9.26
//page173

Ei=45 // V     
Vz1=10 // V
Vz2=10 // V
Vz3=10 // V
Iz=1000d-3 // current rating for each zener in ampere

Eo=Vz1+Vz2+Vz3

R=(Ei-Eo)/Iz

printf("required series resistance = %.3f ohm \n",R)

// since zener diode is not available in xcos, simple diodes are used to represent zener diode in the circuit made in xcos
