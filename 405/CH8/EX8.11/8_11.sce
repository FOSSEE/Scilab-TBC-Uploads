clear;
clc;
printf("\t\t\tExample Number 8.11\n\n\n");
// open cylindrical shield in large room
// Example 8.11 (page no.-413-415) 
// solution

// two concentric cylinders of example(8.3) have 
T1 = 1000;// [K] 
E1 = 0.8;
E2 = 0.2;
T3 = 300;// [K] room temperature 
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
// please refer to figure example 8-11(page no.-413) for radiation network
// the room is designed as surface 3 and J3 = Eb3, because the room is very large,(i.e. its surface is very small) 
// in this problem we must consider the inside and outside of surface 2 and thus have subscripts i and o to designate the respective quantities. 
// the shape factor can be obtained from example 8-3 as
F12 = 0.8253;
F13 = 0.1747;
F23i = 0.2588;
F23o = 1.0;
// also
A1 = %pi*0.1*0.2;// [square meter] area of first cylinder
A2 = %pi*0.2*0.2;// [square meter] area of second cylinder
Eb1 = sigma*T1^4;// [W/square meter]
Eb3 = sigma*T3^4;// [W/square meter]
// the resistances may be calculated as 
R1 = (1-E1)/(E1*A1);
R2 = (1-E2)/(E2*A2);
R3 = 1/(A1*F12);
R4 = 1/(A2*F23i);
R5 = 1/(A2*F23o);
R6 = 1/(A1*F13);
// the network could be solved as a series-parallel circuit to obtain the heat transfer, butwe will need the radiosities anyway, so we setup three nodal equations to solve for J1,J2i, and J2o.
// we sum the currents into each node and set them equal to zero:

// node J1: (Eb1-J1)/R1+(Eb3-J3)/R6+(J2i-J1)/R3 = 0
// node J2i: (J1-J2i)/R3+(Eb3-J2i)/R4+(J2o-J2i)/(2*R2) = 0
// node J2o: (Eb3-J2o)/R5+(J2i-J2o)/(2*R2) = 0
// these equations can be solved by matrix method and the solution is 
J1 = 49732;// [W/square meter]
J2i = 26444;// [W/square meter]
J2o = 3346;// [W/square meter]
// the heat transfer is then calculated from
q = (Eb1-J1)/((1-E1)/(E1*A1));// [W]
// from the network we see that
Eb2 = (J2i+J2o)/2;// [W/square meter]
// and 
T2 = (Eb2/sigma)^(1/4);// [K]
// if the outer cylinder had not been in place acting as a "shield" the heat loss from cylinder 1 could have been calculated from equation(8-43a) as 
q1 = E1*A1*(Eb1-Eb3);// [W]
printf("temperature of the outer cylinder is %f K",T2);
printf("\n\ntotal heat lost by inner cylinder is %f W",q1);























