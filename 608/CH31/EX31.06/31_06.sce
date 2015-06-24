//Problem 31.06: Use nodal analysis to determine the current flowing in each branch of the network shown in Figure 31.10.

//initializing the variables:
rv1 = 100; // in volts
rv2 = 50; // in volts
thetav1 = 0; // in degrees
thetav2 = 90; // in degrees
R1 = 25; // in ohm
R2 = 20; // in ohm
R3 = 10; // in ohm

//calculation:
//voltages
V1 = rv1*cos(thetav1*%pi/180) + %i*rv1*sin(thetav1*%pi/180)
V2 = rv2*cos(thetav2*%pi/180) + %i*rv2*sin(thetav2*%pi/180)
//There are only two principal nodes in Figure 31.10 so only one nodal equation is required. Node 2 is taken as the reference node.
//The equation at node 1 is I1 + I2 + I3 = 0
Vn1 = [(V1/R1 + V2/R3)/(1/R1 + 1/R2 + 1/R3)]
I1 = (Vn1 - V1)/R1
I2 = Vn1/R2
I3 = (Vn1 - V2)/R3

printf("\n\n Result \n\n")
printf("\n current, I1 is %.2f + (%.2f)i A, current, I2 is  %.2f + (%.2f)i A and current, I3 is %.2f + (%.2f)i A",real(I1), imag(I1),real(I2), imag(I2),real(I3), imag(I3))