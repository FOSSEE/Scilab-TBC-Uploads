//Problem 24.08: A circuit comprises a resistance of 90 ohm in series with an inductor of inductive reactance 150 ohm. If the supply current is(1.35/_0°)A, determine (a) the supply voltage, (b) the voltage across the 90 ohm resistance, (c) the voltage across the inductance, and (d) the circuit phase angle. Draw the phasor diagram. 

//initializing the variables:
R = 90; // in ohms
XL = 150; // in ohms
ri = 1.35; // in amperes
thetai = 0; // in degrees

//calculation:
I = ri*cos(thetai*%pi/180) + %i*ri*sin(thetai*%pi/180)
//Circuit impedance Z
Z = R + %i*XL
//Supply voltage, V
V = I*Z
//Voltage across 90 ohm resistor
VR = real(V)
//Voltage across inductance, VL
VL = imag(V)
xv = real(V)
yv = imag(V)
rv = (xv^2 + yv^2)^0.5
thetav = atan(yv/xv)*180/%pi
phi = thetav - thetai

printf("\n\n Result \n\n")
printf("\n (a)Supply voltage, V is %.2f + (%.2f)i V",xv,yv)
printf("\n (b)Voltage across 90 ohm resistor, VR is %.2f V",VR)
printf("\n (c)Voltage across inductance, VL is %.2f V",VL)
printf("\n (d)Circuit phase angle is %.2f°",phi)