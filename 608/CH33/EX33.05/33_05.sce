//Problem 33.05:Determine the Th´evenin equivalent circuit with respect to terminals AB of the circuit shown in Figure 33.27. Hence determine (a) the magnitude of the current flowing in a (3.75 + i11) ohm impedance connected across terminals AB, and (b) the magnitude of the p.d. across the( 3.75 + i11)ohm impedance.

//initializing the variables:
rv = 24; // in volts
thetav = 0; // in degrees
R1 = -1*%i*3; // in ohm
R2 = 4; // in ohm
R3 = %i*3; // in ohm

//calculation:
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//Current I1 shown in Figure 33.27 is given by
I1 = V/(R1 + R2 + R3)
//The Th´evenin equivalent voltage, i.e., the open-circuit voltage across terminals AB, is given by
E = I1*(R2 + R3)
//When the voltage source is removed, the impedance z ‘looking in’ at AB is given by
z = (R2 + R3)*R1/(R1 + R2 + R3)
//Thus the Th´evenin equivalent circuit is as shown in Figure 33.28.
//when (3.75 + i11) ohm impedance connected across terminals AB, the current I flowing in the impedance is given by
R = 3.75 + %i*11;  // in ohms
I = E/(R + z)
Imag = (real(I)^2 + imag(I)^2)^0.5
//the p.d. across the( 3.75 + i11)ohm impedance.
VR = I*R
VRmag = (real(VR)^2 + imag(VR)^2)^0.5

printf("\n\n Result \n\n")
printf("\n (a) the current I flowing in the (3.75 + i11) impedance is given by is %.0f A",Imag)
printf("\n (b) the magnitude of the p.d. across the impedance is %.1f V",VRmag)