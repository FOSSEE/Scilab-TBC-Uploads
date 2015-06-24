//Problem 31.09: Use nodal analysis to determine the voltages at nodes 2 and 3 in Figure 31.13 and hence determine the current flowing in the 2 ohm resistor and the power dissipated in the 3 ohm resistor.

//initializing the variables:
V = 8; // in volts
R1 = 1; // in ohm
R2 = 2; // in ohm
R3 = 3; // in ohm
R4 = 4; // in ohm
R5 = 5; // in ohm
R6 = 6; // in ohm

//calculation:
//In Figure 31.13, the reference node is shown at point A.
//At node 1,
//V1*(1/R1 + 1/R6 + 1/R5) - V2/R1 - V3/R5 = V/R5
//The equation at node 2
//V1*(-1/R1) + V2*(1/R2 + 1/R1 + 1/R3) - V3/R3 = 0
//At node 3
// - V1/R5 - V2/R3 + V3*(1/R4 + 1/R3 + 1/R5) = -1*V/R5
//using determinants
d1 = [V/R5 -1/R1 -1/R5; 0 (1/R2 + 1/R1 + 1/R3) -1/R3; -1*V/R5 -1/R3 (1/R4 + 1/R3 + 1/R5)]
D1 = det(d1)
d2 = [(1/R1 + 1/R6 + 1/R5) V/R5 -1/R5; -1/R1 0 -1/R3; -1/R5 -1*V/R5 (1/R4 + 1/R3 + 1/R5)]
D2 = det(d2)
d3 = [(1/R1 + 1/R6 + 1/R5) -1/R1 V/R5; -1/R1 (1/R2 + 1/R1 + 1/R3) 0; -1/R5 -1/R3 -1*V/R5]
D3 = det(d3)
d = [(1/R1 + 1/R6 + 1/R5) -1/R1 -1/R5; -1/R1 (1/R2 + 1/R1 + 1/R3) -1/R3; -1/R5 -1/R3 (1/R4 + 1/R3 + 1/R5)]
D = det(d)
Vn1 = D1/D
Vn2 = D2/D
Vn3 = D3/D 
//the current in the 2 ohm resistor
I2 = Vn2/R2
//power dissipated in the 3 ohm resistance
P3 = R3*((Vn2 - Vn3)/R3)^2

printf("\n\n Result \n\n")
printf("\n voltage at node 2 is %.2f V",Vn2)
printf("\n voltage at node 3 is %.2f V",Vn3)
printf("\n (a)current through 2 ohm resistor is %.2f A",I2)
printf("\n (b)power dissipated in the 3 ohm resistor is %.2f W",P3)