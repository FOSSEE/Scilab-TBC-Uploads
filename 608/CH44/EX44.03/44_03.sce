//Problem 44.03: When operating at a frequency of 2 kHz, a cable has an attenuation of 0.25 Np/km and a phase shift of 0.20 rad/km. If a 5 V rms signal is applied at the sending end, determine the voltage at a point 10 km down the line, assuming that the termination is equal to the characteristic impedance of the line.

//initializing the variables:
a = 0.25; // in Np/km
b = 0.20; // in rad/km
Vs = 5; // in Volts
n = 10; // in km
f = 2000; // in Hz

//calculation:
w = 2*%pi*f
//the voltage 10 km down the line
r = a + %i*b
VR = Vs*%e^(-1*n*r)

printf("\n\n Result \n\n")
printf("\n the voltage 10 km down the line is %.2f +(%.2f)i A",real(VR), imag(VR))
