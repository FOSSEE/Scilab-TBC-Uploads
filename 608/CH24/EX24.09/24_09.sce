//Problem 24.09: A coil of resistance 25 ohm and inductance 20 mH has an alternating voltage given by v = 282.8sin(628.4t + pi/3) volts applied across it. Determine (a) the rms value of voltage (in polar form), (b) the circuit impedance, (c) the rms current flowing, and (d) the circuit phase angle.

//initializing the variables:
R = 25; // in ohms
L = 0.02; // in henry
Vm = 282.8; // in volts
w = 628.4; // in rad/sec
phiv = %pi/3; // phase angle

//calculation:
//rms voltage
Vrms = 0.707*Vm*cos(phiv) + %i*0.707*Vm*sin(phiv)
//frequency
f = w/(2*%pi)
//Inductive reactance XL
XL = 2*%pi*f*L
//Circuit impedance Z
Z = R + %i*XL
//Rms current
Irms = Vrms/Z
phii = atan(imag(Irms)/real(Irms))*180/%pi
phi = phiv*180/%pi - phii

printf("\n\n Result \n\n")
printf("\n (a)the rms value of voltage is %.2f + (%.2f)i V ",real(Vrms), imag(Vrms))
printf("\n (b)the circuit impedance is %.2f + (%.2f)i ohm ",R, XL)
printf("\n (c)the rms current flowing is %.2f + (%.2f)i A ",real(Irms), imag(Irms))
printf("\n (d)Circuit phase angle is %.2f° ",phi)