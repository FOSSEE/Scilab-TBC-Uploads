clear;
clc;
printf("\t\t\tExample Number 8.6\n\n\n");
// hot plates enclosed by a room
// Example 8.6 (page no.-402-404) 
// solution

w = 0.5;// [m] width of plate 
L = 1;// [m] length of plate
t = 0.5;// [m] seperation between two plates
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
// this is a three-body problem, the two plates and the room, so the radiation network is shown in figure(8-27) page no.-401.
// from the data of the problem 
T1 = 1000+273;// [K] temperature of first plate
T2 = 500+273;// [K] temperature of second plate
T3 = 27+273;// [K] temperature of walls of plates
A1 = w*L;// [square meter] area of plate
A2 = A1;// [square meter] area of plate
E1 = 0.2;// emissivity of plate 1
E2 = 0.5;// emissivity of plate 2
// because the area of the room A3 is very large, the resistance (1-E3)/(E3*A3) may be taken as zero and we obtain Eb3 = J3.
// the shape factor F12 was given in example 8-2:
F12 = 0.285;
F21 = F12;
F13 = 1-F12;
F23 = 1-F21;
// the resistance in the network are calculated as 
R1 = (1-E1)/(E1*A1);
R2 = (1-E2)/(E2*A2);
R3 = 1/(A1*F12);
R4 = 1/(A1*F13);
R5 = 1/(A2*F23);
// taking the resistance (1-E3)/(E3*A3) as zero, we have the network (as shown in figure example 8-6(page no.-403)).
// to calculate the heat flows at each surface we must determine the radiosities J1 and J2. the network is solved by setting the sum of the heat currents entering nodes J1 and J2 to zero 

// node J1:
// (Eb1-J1)/R1+(J2-J1)/R3+(Eb3-J1)/R4 = 0                            (a)

// node J2:
// (J1-J2)/R3+(Eb3-J2)/R5+(Eb2-J2)/R2 = 0                            (b)

// now
Eb1 = sigma*T1^(4);// [W/square meter]
Eb2 = sigma*T2^(4);// [W/square meter]
Eb3 = sigma*T3^(4);// [W/square meter]
J3 = Eb3;// [W/square meter]
// inserting the values of Eb1,Eb2, and Eb3 into equations (a) and (b), we have two equations and two unknowns J1 and J2 that may be solved simultaneously to give 
// on simplifying we get J1 = (J2-R3*[(Eb3-J2)/R5+(Eb2-J2)/R2])
// putting this value in equation (a) and solve for J2
deff('[y] = f3(J2)','y = (Eb1-(J2-R3*[(Eb3-J2)/R5+(Eb2-J2)/R2]))/R1+(J2-(J2-R3*[(Eb3-J2)/R5+(Eb2-J2)/R2]))/R3+(Eb3-(J2-R3*[(Eb3-J2)/R5+(Eb2-J2)/R2]))/R4');
J2 = fsolve(1,f3);// [W/square meter]
J1 = (J2-R3*[(Eb3-J2)/R5+(Eb2-J2)/R2]);// [W/square meter]
// the total heat lost by plate 1 is 
q1 = (Eb1-J1)/[(1-E1)/(E1*A1)];// [W]
// and the heat lost by plate 2 is 
q2 = (Eb2-J2)/[(1-E2)/(E2*A2)];// [W]
// the total heat received by the room is 
q3 = [(J1-J3)/(1/(A1*F13))]+[(J2-J3)/(1/(A2*F23))];// [W]
printf("the net heat transfer for plate 1 is %f kW",q1/1000)
printf("\n\n the net heat transfer for plate 2 is %f kW",q2/1000)
printf("\n\n the net heat transfer to the room  is %f kW",q3/1000)




