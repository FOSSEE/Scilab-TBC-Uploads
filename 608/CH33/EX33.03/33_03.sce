//Problem 33.03: Use Th´evenin’s theorem to determine the power dissipated in the 48 ohm resistor of the network shown in Figure 33.19

//initializing the variables:
rv = 50; // in volts
thetav = 0; // in degrees
R1 = -1*%i*400; // in ohm
R2 = 300; // in ohm
R3 = %i*144; // in ohm
R4 = 48; // in ohm

//calculation:
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//The R3 and R4 impedance is initially removed from the network as shown in Figure 33.20.
//From Figure 33.20,
//current, I
i = V/(R1 + R2)
//the open circuit e.m.f. E
E = i*R2
//When the V is removed from the circuit, the impedance, z, ‘looking in’ at the break is given by
z = R1*R2/(R1 + R2)
//The Th´evenin equivalent circuit is shown in Figure 33.21 connected to R# and R4,
//Hence current
I = E/(R4 + R3 + z)
Imag = (real(I)^2 + imag(I)^2)^0.5
//the power dissipated in the 48 ohm resistor
Pr48 = R4*Imag^2

printf("\n\n Result \n\n")
printf("\n the power dissipated in the 48 ohm resistor is %.2f W",Pr48)