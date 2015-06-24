//Problem 31.05: Determine the value of voltage VXY shown in the circuit of Figure 31.9.

//initializing the variables:
rv1 = 8; // in volts
rv2 = 8; // in volts
thetav1 = 0; // in degrees
thetav2 = 90; // in degrees
R1 = 5; // in ohm
R2 = %i*6; // in ohm
R3 = 4; // in ohm
R4 = 3; // in ohm

//calculation:
//voltages
V1 = rv1*cos(thetav1*%pi/180) + %i*rv1*sin(thetav1*%pi/180)
V2 = rv2*cos(thetav2*%pi/180) + %i*rv2*sin(thetav2*%pi/180)
//The circuit contains no principal nodes. However, if point Y is chosen as the reference node then an equation may be written for node X assuming that current leaves point X by both branches
VX = [(V1/(R1 + R3) + V2/(R2 + R4))/(1/(R1 + R3) + 1/(R2 + R4))]
VXY = VX

printf("\n\n Result \n\n")
printf("\n voltage VXY is %.2f + (%.2f)i V",real(VXY), imag(VXY))