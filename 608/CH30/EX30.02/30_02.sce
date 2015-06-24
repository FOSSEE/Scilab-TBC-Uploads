//Problem 30.02: Determine the current flowing in the 2 ohm resistor of the circuit shown in Figure 30.5 using Kirchhoff’s laws. Find also the power dissipated in the 3 ohm resistance.

//initializing the variables:
V = 8; // in volts
R1 = 1; // in ohm
R2 = 2; // in ohm
R3 = 3; // in ohm
R4 = 4; // in ohm
R5 = 5; // in ohm
R6 = 6; // in ohm

//calculation:
//Currents and their directions are assigned as shown in Figure 30.6.
//Three loops are chosen since three unknown currents are required. The choice of loop directions is arbitrary. loop ABCDE, and loop EDGF and loop DCHG
//using kirchoff rule in 3 loops
//three eqns obtained
//R5*I1 + (R6 + R4)*I2 - R4*I3 = V
//-1*R1*I1 + (R6 + R1)*I2 + R2*I3 = 0
// R3*I1 - (R3 + R4)*I2 + (R2 + R3 + R4)*I3 = 0
//using determinants
d1 = [V (R6 + R4) -1*R4; 0 (R6 + R1) R2; 0 (-1*(R3 + R4)) (R2 + R3 + R4)]
D1 = det(d1)
d2 = [R5 V -1*R4; -1*R1 0 R2; R3 0 (R2 + R3 + R4)]
D2 = det(d2)
d3 = [R5 (R6 + R4) V; -1*R1 (R6 + R1) 0; R3 (-1*(R3 + R4)) 0]
D3 = det(d3)
d = [R5 (R6 + R4) -1*R4; -1*R1 (R6 + R1) R2; R3 (-1*(R3 + R4)) (R2 + R3 + R4)]
D = det(d)
I1 = D1/D
I2 = D2/D
I3 = D3/D 
//Current in the 2 ohm resistance
I = I1 - I2 + I3
//power dissipated in the 3 ohm resistance
P3 = R3*I^2

printf("\n\n Result \n\n")
printf("\n (a)current through 2 ohm resistor is %.2f A",I2)
printf("\n (b)power dissipated in the 3 ohm resistor is %.2f W",P3)