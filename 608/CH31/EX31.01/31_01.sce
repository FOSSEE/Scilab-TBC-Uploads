//Problem 31.01: Use mesh-current analysis to determine the current flowing in (a) the 5 ohm resistance, and (b) the 1ohm  resistance of the d.c. circuit shown in Figure 31.2.

//initializing the variables:
V1 = 4; // in volts
V2 = 5; // in volts
R1 = 3; // in ohm
R2 = 5; // in ohm
R3 = 4; // in ohm
R4 = 1; // in ohm
R5 = 6; // in ohm
R6 = 8; // in ohm

//calculation:
//The mesh currents I1, I2 and I3 are shown in Figure 31.2. Using Kirchhoff’s voltage law in 3 loops
//three eqns obtained
//(R1 + R2)*I1 - R2*I2 = V1
//-1*R2*I1 + (R2 + R3 + R4 + R5)*I2 - R4*I3 = 0
// -1*R4*I2 + (R4 + R6)*I3 = -1*V2
//using determinants
d1 = [V1 -1*R2 0; 0 (R2 + R3 + R4 + R5) -1*R4; -1*V2 -1*R4 (R4 + R6)]
D1 = det(d1)
d2 = [(R1 + R2) V1 0; -1*R2 0 -1*R4; 0 -1*V2 (R4 + R6)]
D2 = det(d2)
d3 = [(R1 + R2) -1*R2 V1; -1*R2 (R2 + R3 + R4 + R5) 0; 0 -1*R4 -1*V2]
D3 = det(d3)
d = [(R1 + R2) -1*R2 0; -1*R2 (R2 + R3 + R4 + R5) -1*R4; 0 -1*R4 (R4 + R6)]
D = det(d)
I1 = D1/D
I2 = D2/D
I3 = D3/D 
IR2 = I1 - I2
IR4 = I2 - I3

printf("\n\n Result \n\n")
printf("\n (a)current in the 5 ohm resistance is %.2f A",IR2)
printf("\n (b)current in the 1 ohm resistance is %.2f A",IR4)