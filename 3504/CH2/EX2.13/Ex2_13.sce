//To determine the value of the ganged condenser C and resistor R so that the current through Z_l is zero.
clc;
w=100                  //(rad/sec)
//Equating real and imaginary parts for [-w^2C^2 + 1/R(2*j*w*C + 1 - (j*10^3)/w)]=0
C=10^3/(2*w^2)           //Capacitance(Farad)
R=1/(w^2*C^2)              //Resistance(ohm)
