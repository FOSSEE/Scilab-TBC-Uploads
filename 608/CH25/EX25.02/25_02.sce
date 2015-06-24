//Problem 25.02: Determine expressions for the impedance of the following admittances: (a)0.004/_30°S (b) (0.001-i0.002)S (c)(0.05 + i0.08)S

//initializing the variables:
Y2 = 0.001 - %i*0.002; // in S
Y3 = 0.05 + %i*0.08; // in S
r1 = 0.004; // in S
theta1 = 30; // in degrees

//calculation:
//impedance, Z
Z2 = 1/Y2
Z3 = 1/Y3
Y1 = r1*cos(theta1*%pi/180) + %i*r1*sin(theta1*%pi/180)
Z1 = 1/Y1

printf("\n\n Result \n\n")
printf("\n (a)Impedance,Z is (%.1f + (%.0f)i) ohm ",real(Z1), imag(Z1))
printf("\n (b)Impedance,Z is (%.0f + (%.0f)i) ohm ",real(Z2), imag(Z2))
printf("\n (c)Impedance,Z is (%.2f + (%.2f)i) ohm ",real(Z3), imag(Z3))