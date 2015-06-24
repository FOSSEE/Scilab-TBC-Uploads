//Problem 33.13:Derive the Norton equivalent network with respect to terminals PQ for the network shown in Figure 33.64 and hence determine the magnitude of the current flowing in a 2 ohm resistor connected across PQ.

//initializing the variables:
rv1 = 5; // in volts
rv2 = 10; // in volts
thetav1 = 45; // in degrees
thetav2 = 0; // in degrees
R1 = 8; // in ohm
R2 = 5; // in ohm
R3 = %i*3; // in ohm
R4 = 4; // in ohm

//calculation:
//voltage
V1 = rv1*cos(thetav1*%pi/180) + %i*rv1*sin(thetav1*%pi/180)
V2 = rv2*cos(thetav2*%pi/180) + %i*rv2*sin(thetav2*%pi/180)
//Terminals PQ are initially short-circuited, as shown in Figure 33.65.
//Currents I1 and I2 are shown labelled. Kirchhoff’s laws are used.
//For loop ABCD, and moving anticlockwise,
//I1*(R2 + R3 + R4) + I2*(R3 + R4) = V2
//For loop DPQC, and moving clockwise,
//R2*I1 - R1*I2 = V2 - V1
//Solving Equations by using determinants gives
d1 = [V2 (R3 + R4); (V2 - V1) -1*R1]
D1 = det(d1)
d2 = [(R2 + R3 + R4) V2; R2 (V2 - V1)]
D2 = det(d2)
d = [(R2 + R3 + R4) (R3 + R4); R2 -1*R1]
D = det(d)
I1 = D1/D
I2 = D2/D
//the short-circuit current Isc
Isc = I2
//The impedance, z, ‘looking in’ at a break made between P and Q is given by
z = R1 + R2*(R3 + R4)/(R2 + R3 + R4)
//The Norton equivalent circuit is shown in Figure 33.66, where current I is given by
R = 2; //in ohm
I = (z/(z + R))*Isc
Imag = (real(I)^2 + imag(I)^2)^0.5

printf("\n\n Result \n\n")
printf("\n the magnitude of the current flowing 5 ohm resistor is %.2f A", Imag)