//Problem 31.07: In the network of Figure 31.11 use nodal analysis to determine (a) the voltage at nodes 1 and 2, (b) the current in the j4 ohm inductance, (c) the current in the 5 ohm resistance, and (d) the magnitude of the active power dissipated in the 2.5 ohm resistance.

//initializing the variables:
rv1 = 25; // in volts
rv2 = 25; // in volts
thetav1 = 0; // in degrees
thetav2 = 90; // in degrees
R1 = 2; // in ohm
R2 = -1*%i*4; // in ohm
R3 = 5; // in ohm
R4 = %i*4; // in ohm
R5 = 2.5; // in ohm

//calculation:
//voltages
V1 = rv1*cos(thetav1*%pi/180) + %i*rv1*sin(thetav1*%pi/180)
V2 = rv2*cos(thetav2*%pi/180) + %i*rv2*sin(thetav2*%pi/180)
//The equation at node 1
//Vn1*(1/R1 + 1/R2 + 1/R3) - Vn2/R3 = V1/R1
//The equation at node 2
//Vn1*(-1/R3) + Vn2*(1/R4 + 1/R5 + 1/R3) = V2/R5
//using determinants
d1 = [V1/R1 -1/R3; V2/R5 (1/R4 + 1/R5 + 1/R3)]
D1 = det(d1)
d2 = [(1/R1 + 1/R2 + 1/R3) V1/R1; -1/R3 V2/R5]
D2 = det(d2)
d = [(1/R1 + 1/R2 + 1/R3) -1/R3; -1/R3 (1/R4 + 1/R5 + 1/R3)]
D = det(d)
Vn1 = D1/D
Vn2 = D2/D
//current in the j4 ohm inductance is given by:
I4 = Vn2/R4
//current in the 5 ohm resistance is given by:
I3 = (Vn1 - Vn2)/R3
//active power dissipated in the 2.5 ohm resistor is given by
P5 = R5*((Vn2 - V2)/R5)^2
//magnitude of the active power dissipated
P5mag = (real(P5)^2 + imag(P5)^2)^0.5

printf("\n\n Result \n\n")
printf("\n (a) the voltage at nodes 1 and 2 is %.2f + (%.2f)i V and %.2f + (%.2f)i V",real(Vn1), imag(Vn1),real(Vn2), imag(Vn2))
printf("\n (b)the current in the j4 ohm inductance is %.2f + (%.2f)i A",real(I4), imag(I4))
printf("\n (c)the current in the 5 ohm resistance is %.2f + (%.2f)i A",real(I3), imag(I3))
printf("\n (d) magnitude of the active power dissipated in the 2.5 ohm resistance is %.2f W",P5mag)