//Problem 44.06: At a frequency of 1.5 kHz the open-circuit impedance of a length of transmission line is 800/_-50° ohm and the short-circuit impedance is 413/_-20° ohm. Determine the characteristic impedance of the line at this frequency.

//initializing the variables:
rzoc = 800; // in ohm
thetazoc = -50; // in degrees
rzsc = 413; // in ohm
thetazsc = -20; // in degrees
f = 1500; // in Hz

//calculation:
//open circuit impedance
Zoc = rzoc*cos(thetazoc*%pi/180) + %i*rzoc*sin(thetazoc*%pi/180)
//short circuit impedance
Zsc = rzsc*cos(thetazsc*%pi/180) + %i*rzsc*sin(thetazsc*%pi/180)
//characteristic impedance Zo
Zo = (Zoc*Zsc)^0.5

printf("\n\n Result \n\n")
printf("\n characteristic impedance Zo is %.0f +(%.0f)i ohm",real(Zo), imag(Zo))
