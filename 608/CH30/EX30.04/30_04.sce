//Problem 30.04: For the network shown in Figure 30.9, use Kirchhoff’s laws to determine the magnitude of the current in the (4 + i3)ohm impedance.

//initializing the variables:
rv1 = 10; // in volts
rv2 = 12; // in volts
rv3 = 15; // in volts
thetav1 = 0; // in degrees
thetav2 = 0; // in degrees
thetav3 = 0; // in degrees
R1 = 4; // in ohm
R2 = -1*5*%i; // in ohm
R3 = 8; // in ohm
R4 = 4; // in ohm
R5 = %i*3; // in ohm

//calculation:
//voltages
V1 = rv1*cos(thetav1*%pi/180) + %i*rv1*sin(thetav1*%pi/180)
V2 = rv2*cos(thetav2*%pi/180) + %i*rv2*sin(thetav2*%pi/180)
V3 = rv3*cos(thetav3*%pi/180) + %i*rv3*sin(thetav3*%pi/180)
//Currents I1, I2 and I3 with their directions are shown in Figure 30.10.
//Three loops are chosen. The choice of loop directions is arbitrary. loop ABGH, and loopBCFG and loop CDEF
Z4 = R4 + R5
//using kirchoff rule in 3 loops
//three eqns obtained
//R1*I1 + R2*I2 = V1 + V2
//-1*R3*I1 + (R3 + R2)*I2 + R3*I3 = V2 + V3
// -1*R3*I1 + R3*I2 + (R3 + Z4)*I3 = V3
//using determinants
d1 = [(V1 + V2) R2 0; (V2 + V3) (R3 + R2) R3; V3 R3 (R3 + Z4)]
D1 = det(d1)
d2 = [R1 (V1 + V2) 0; -1*R3 (V2 + V3) R3; -1*R3 V3 (R3 + Z4)]
D2 = det(d2)
d3 = [R1 R2 (V1 + V2); -1*R3 (R3 + R2) (V2 + V3); -1*R3 R3 V3]
D3 = det(d3)
d = [R1 R2 0; -1*R3 (R3 + R2) R3; -1*R3 R3 (R3 + Z4)]
D = det(d)
I1 = D1/D
I2 = D2/D
I3 = D3/D 
I3mag = (real(I3)^2 + imag(I3)^2)^0.5

printf("\n\n Result \n\n")
printf("\n magnitude of the current through (4 + i3)ohm impedance is %.2f A",I3mag)