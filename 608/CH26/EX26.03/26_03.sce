//Problem 26.03: A series circuit possesses resistance R and capacitance C. The circuit dissipates a power of 1.732 kW and has a power factor of 0.866 leading. If the applied voltage is given by v = 141.4*sin(10000t + pi/9) volts, determine (a) the current flowing and its phase, (b) the value of resistance R, and (c) the value of capacitance C.

//initializing the variables:
Vm = 141.4; // in volts
w = 10000; // in rad/sec
phiv = %pi/9; // in radian
Pd = 1732; // in Watts
pf = 0.866; // power fctr

//calculation:
//the rms voltage,
Vrms = 0.707*Vm
//Power P = V*I*cos(phi)
//current magnitude, Irms
Irms = Pd/(Vrms*pf)
phid = acos(pf)
//current phase angle
phii = phiv + phid
phiid = phii*180/%pi // in degrees
//Voltage, V
V = Vrms*cos(phiv) + %i*Vrms*sin(phiv)
//current, I
I = Irms*cos(phii) + %i*Irms*sin(phii)
//Impedance, Z
Z = V/I
//resistance, R
R = real(Z)
//capacitive reactance, Xc
Xc = abs(imag(Z))
//capacitance, C
C = 1/ (w*Xc)

printf("\n\n Result \n\n")
printf("\n (a)the current flowing and Circuit phase angle is %.0f/_%.2f° A ",Irms,phiid)
printf("\n (b) the resistance is %.2f ohm ",R)
printf("\n (c) the capacitance is %.2E farad ",C)