//Problem 33.12:For the network shown in Figure 33.60, obtain the Norton equivalent network at terminals AB. Hence determine the power dissipated in a 5 ohm resistor connected between A and B.

//initializing the variables:
rv = 20; // in volts
thetav = 0; // in degrees
R1 = 2; // in ohm
R2 = 4; // in ohm
R3 = %i*3; // in ohm
R4 = -1*%i*3; // in ohm

//calculation:
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//Terminals AB are initially short-circuited, as shown in Figure 33.61.
//The circuit impedance Z presented to the voltage source is given by
Z = R1 + R4*(R2 + R3)/(R2 + R3 + R4)
//Thus current I in Figure 33.61 is given by
I = V/Z
Isc = ((R2 + R3)/(R2 + R3 + R4))*I
//Removing the voltage source of Figure 33.60 gives the network Figure 33.62 of Figure 33.62. Impedance, z, ‘looking in’ at terminals AB is given by
z = R4 + R1*(R2 + R3)/(R2 + R3 + R1)
//The Norton equivalent network is shown in Figure 33.63.
R = 5; // in ohms
//Current IL
IL = (z/(z + R))*Isc
ILmag = (real(IL)^2 + imag(IL)^2)^0.5
//the power dissipated in the 5 ohm resistor is
Pr5 = R*ILmag^2

printf("\n\n Result \n\n")
printf("\n the power dissipated in the 5 ohm resistor is %.2f W", Pr5)