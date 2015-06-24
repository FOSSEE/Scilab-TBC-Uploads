//Problem 31.04: For the network shown in Figure 31.8, determine the voltage VAB, by using nodal analysis.

//initializing the variables:
ri = 20; // in amperes
thetai = 0; // in degrees
R1 = 10; // in ohm
R2 = %i*3; // in ohm
R3 = 4; // in ohm
R4 = 16; // in ohm

//calculation:
//current
I = ri*cos(thetai*%pi/180) + %i*ri*sin(thetai*%pi/180)
//Figure 31.8 contains two principal nodes (at 1 and B) and thus only one nodal equation is required. B is taken as the reference node and the equation for node 1 is obtained as follows. Applying Kirchhoff’s current law to node 1 gives:
//IX + IY = I
V1 = I/((1/R4) +(1/(R2  +R3)))
IY = V1/(R2 + R3)
VAB = IY*R3

printf("\n\n Result \n\n")
printf("\n voltage VAB is %.2f + (%.2f)i V",real(VAB), imag(VAB))