//Problem 43.08: For the circuit shown in Figure 43.7, determine the p.d. E2 which appears across the open-circuited secondary winding, given that E1 D 8 sin 2500t volts.

//initializing the variables:
E1 = 8; // in Volts
thetae1 = 0; // in degrees
w = 2500; // in rad/sec
R = 15; // in ohm
L = 5E-3; // in Henry
M = 0.1E-3; // in Henry

//calculation:
//voltage
E1 = E1*cos(thetae1*%pi/180) + %i*E1*sin(thetae1*%pi/180)
//Impedance of primary
Z1 = R + %i*w*L
//Primary current I1
I1 = E1/Z1
//E2
E2 = %i*w*M*I1

printf("\n\n Result \n\n")
printf("\nE2 is %.2f + (%.2f)i V",real(E2), imag(E2))