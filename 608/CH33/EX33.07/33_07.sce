//Problem 33.07: For the network shown in Figure 33.32, derive the Th´evenin equivalent circuit with respect to terminals PQ, and hence determine the power dissipated by a 2 ohm resistor connected across PQ.

//initializing the variables:
rv1 = 5; // in volts
rv2 = 10; // in volts
thetav1 = 45; // in degrees
thetav2 = 0; // in degrees
R1 = 8; // in ohm
R2 = 5; // in ohm
R3 = %i*3; // in ohm
R4 = 4; // in ohm

//calculation:
//voltage
V1 = rv1*cos(thetav1*%pi/180) + %i*rv1*sin(thetav1*%pi/180)
V2 = rv2*cos(thetav2*%pi/180) + %i*rv2*sin(thetav2*%pi/180)
//Current I1 shown in Figure 33.32 is given by
I1 = V2/(R2 + R3 + R4)
//Hence the voltage drop across the 5 ohm resistor is given by VX is in the direction shown in Figure 33.32,
Vx = I1*R2
//The open-circuit voltage E across PQ is the phasor sum of V1, Vx and V2, as shown in Figure 33.33.
E = V2 - V1 - Vx
//The impedance, z, ‘looking in’ at terminals PQ with the voltage sources removed is given by
z = R1 + R2*(R3 + R4)/(R2 + R3 + R4)
//The Th´evenin equivalent circuit is shown in Figure 33.34 with the 2 ohm resistance connected across terminals PQ.
//The current flowing in the 2 ohm resistance is given by
R = 2; // in ohms
I = E/(z + R)
Imag = (real(I)^2 + imag(I)^2)^0.5
//power P dissipated in the 2 ohm resistor is given by
Pr2 = R*Imag^2

printf("\n\n Result \n\n")
printf("\n power P dissipated in the 2 ohm resistor is %.4f W",Pr2)