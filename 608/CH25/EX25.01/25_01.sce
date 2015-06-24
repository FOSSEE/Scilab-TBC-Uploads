//Problem 25.01: Determine the admittance, conductance and susceptance of the following impedances: (a)-i5 ohm, (b)25+i40 ohm, (c)3-i2 ohm, (d)50/_40°ohm.

//initializing the variables:
Z1 = 0 - %i*5; // in ohms
Z2 = 25 + %i*40; // in ohms
Z3 = 3 - %i*2; // in ohms
r4 = 50; // in ohms
theta4 = 40; // in degrees

//calculation:
//admittance Y
Y1 = 1/Z1
//conductance, G
G1 = real(Y1)
//Suspectance, Bc
Bc1 = abs(imag(Y1))
//admittance Y
Y2 = 1/Z2
//conductance, G
G2 = real(Y2)
//Suspectance, Bc
Bc2 = abs(imag(Y2))
//admittance Y
Y3 = 1/Z3
//conductance, G
G3 = real(Y3)
//Suspectance, Bc
Bc3 = abs(imag(Y3))
Z4 = r4*cos(theta4*%pi/180) + %i*r4*sin(theta4*%pi/180)
//admittance Y
Y4 = 1/Z4
//conductance, G
G4 = real(Y4)
//Suspectance, Bc
Bc4 = abs(imag(Y4))

printf("\n\n Result \n\n")
printf("\n (a)admittance Y is (%.0f + (%.1f)i) S,conductance, G is %.0f S, susceptance,Bc is %.1f S  ",real(Y1), imag(Y1),G1,Bc1)
printf("\n (b)admittance Y is (%.4f + (%.4f)i) S, conductance, G is %.4f S, susceptance,Bc is %.4f S ",real(Y2), imag(Y2),G2, Bc2)
printf("\n (c)admittance Y is (%.3f + (%.3f)i) S, conductance, G is %.3f S, susceptance,Bc is %.3f S ",real(Y3), imag(Y3),G3,Bc3)
printf("\n (d)admittance Y is (%.4f + (%.4f)i) S, conductance, G is %.4f S, susceptance,Bc is %.4f S ",real(Y4), imag(Y4),G4,Bc4)