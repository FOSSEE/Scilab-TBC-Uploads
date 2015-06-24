//Problem 30.01: Use Kirchhoff’s laws to find the current flowing in each branch of the network shown in Figure 30.3.

//initializing the variables:
rv1 = 100; // in volts
rv2 = 50; // in volts
thetav1 = 0; // in degrees
thetav2 = 90; // in degrees
R1 = 25; // in ohm
R2 = 20; // in ohm
R3 = 10; // in ohm

//calculation:
//voltage
V1 = rv1*cos(thetav1*%pi/180) + %i*rv1*sin(thetav1*%pi/180)
V2 = rv2*cos(thetav2*%pi/180) + %i*rv2*sin(thetav2*%pi/180)
//The branch currents and their directions are labelled as shown in Figure 30.4
//Two loops are chosen. loop ABEF, and loop BCDE
//using kirchoff rule in 3 loops
//two eqns obtained
//(R1 + R2)*I1 + R2*I2 = V1
//R2*I1 + (R2 + R3)*I2 = V2
I1 = (3*V1 - 2*V2)/(3*(R1 + R2) - 2*(R2))
I2 = (V2 - R2*I1)/(R2 + R3)
I = I1 + I2

printf("\n\n Result \n\n")
printf("\n current, I1 is %.2f + (%.2f)i A, current, I2 is  %.2f + (%.2f)i A and total current, I is %.2f + (%.2f)i A",real(I1), imag(I1),real(I2), imag(I2),real(I), imag(I))