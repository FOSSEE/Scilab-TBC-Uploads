
//calculating value of unknown capacitance
V=110//applied voltage
R=30//resistance of resistive circuit
Ir=V/R//Ohm's Law
I=5//total current drawn
Xc=V/sqrt(I^2-Ir^2)
f=50//frequency of supply
C=1/(2*%pi*f*Xc)
mprintf("Capacitance=%f microF\n",C*10^6)
//calculating unknown frequency
I=4//total current drawn
f=sqrt(I^2-Ir^2)/(V*2*%pi*C)
mprintf("To decrease the total current to 4 A, the frequency of the supply should be adjusted to %f Hz",f)
//The answers vary from the textbook due to round off error
