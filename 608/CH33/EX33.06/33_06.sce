//Problem 33.06: Use Th´evenin’s theorem to determine the current flowing in the capacitor of the network shown in Figure 33.29.

//initializing the variables:
rv = 16.55; // in volts
thetav = -22.62; // in degrees
R1 = 4; // in ohm
R2 = %i*2; // in ohm
R3 = %i*6; // in ohm
R4 = 3; // in ohm
R5 = 5; // in ohm
R6 = -1*%i*8; // in ohm

//calculation:
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//The capacitor is removed from branch AB, as shown in Figure 33.30.
//Impedance, Z
Z1 = R3 + R4 + R5
Z = R1 + (Z1*R2/(R2 + Z1))
I1 = V/Z
I2 = (R2/(R2 +Z1))*I1
//The open-circuit voltage, E
E = I2*R5
//If the voltage source is removed from Figure 33.30, the impedance, z, ‘looking in’ at AB is given by
z = R5*((R1*R2/(R1 + R2)) + R3 + R4)/(R5 + ((R1*R2/(R1 + R2)) + R3 + R4))
//The Th´evenin equivalent circuit is shown in Figure 33.31, where the current flowing in the capacitor, I, is given by
I = E/(z + R6)
Imag = (real(I)^2 + imag(I)^2)^0.5
phiid = (atan(imag(I)/real(I)))*180/%pi
printf("\n\n Result \n\n")
printf("\n the current flowing in the capacitor of the network is %.2f/_%.2f° A",Imag,phiid)