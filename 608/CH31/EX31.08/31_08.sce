//Problem 31.08: In the network shown in Figure 31.12 determine the voltage VXY using nodal analysis

//initializing the variables:
ri = 25; // in amperes
thetai = 0; // in degrees
R1 = 4; // in ohm
R2 = %i*3; // in ohm
R3 = 5; // in ohm
R4 = %i*10; // in ohm
R5 = %i*20; // in ohm

//calculation:
//current
I = ri*cos(thetai*%pi/180) + %i*ri*sin(thetai*%pi/180)
//Node 3 is taken as the reference node.
//At node 1,
//V1*(1/(R1 + R2) + 1/R3) - V2/R3 = I
//The equation at node 2
//V1*(-1/R3) + V2*(1/R4 + 1/R5 + 1/R3) = 0
//using determinants
d1 = [I -1/R3; 0 (1/R4 + 1/R5 + 1/R3)]
D1 = det(d1)
d2 = [(1/(R1 + R2) + 1/R3) I; -1/R3 0]
D2 = det(d2)
d = [(1/(R1 + R2) + 1/R3) -1/R3; -1/R3 (1/R4 + 1/R5 + 1/R3)]
D = det(d)
V1 = D1/D
V2 = D2/D
//the voltage between point X and node 3 is
VX = V1*R2/(R1 + R2)
//Thus the voltage
VY = V2
VXY = VX - VY

printf("\n\n Result \n\n")
printf("\n voltage VXY is %.2f + (%.2f)i V",real(VXY), imag(VXY))