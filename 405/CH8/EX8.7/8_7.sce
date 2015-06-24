clear;
clc;
printf("\t\t\tExample Number 8.7\n\n\n");
// surface in radiant balance
// Example 8.7 (page no.-404-405) 
// solution

w = 0.5;// [m] width of plate 
L = 0.5;// [m] length of plate
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
// from the data of the problem 
T1 = 1000;// [K] temperature of first surface
T2 = 27+273;// [K] temperature of room
A1 = w*L;// [square meter] area of rectangle
A2 = A1;// [square meter] area of rectangle
E1 = 0.6;// emissivity of surface 1
// although this problems involves two surfaces which exchange heat and one which is insulated or re-radiating, equation (8-41) may not be used for the calculation because one of the heat-exchanging surfaces(the room) is not convex. The radiation network is shown in figure example 8-7(page no.-404) where surface 3 is the room and surface 2 is the insulated surface. note that J3 = Eb3 because the room is large and (1-E3)/(E3*A3) approaches zero.Because surface 2 is insulated it has zero heat transfer and J2 = Eb2. J2 "floats" in the network and is determined from the overall radiant balance. 
// from figure 8-14(page no.-387) the shape factors are 
F12 = 0.2;
F21 = F12;
// because
F11 = 0;
F22 = 0;
F13 = 1-F12;
F23 = F13;
// the resistances are 
R1 = (1-E1)/(E1*A1);
R2 = 1/(A1*F13);
R3 = 1/(A2*F23);
R4 = 1/(A1*F12);
// we also have
Eb1 = sigma*T1^(4);// [W/square meter]
Eb3 = sigma*T2^(4);// [W/square meter]
J3 = Eb3;// [W/square meter]
// the overall circuit is a series parallel arrangement and the heat transfer is 
R_equiv = R1+(1/[(1/R2)+1/(R3+R4)]);
q = (Eb1-Eb3)/R_equiv;// [W]
// this heat transfer can also be written as q = (Eb1-J1)/((1-E1)/(E1*A1))
// inserting the values 
J1 = Eb1-q*((1-E1)/(E1*A1));// [W/square meter]
// the value of J2 is determined from proportioning the resistances between J1 and J3, so that 
// (J1-J2)/R4 = (J1-J3)/(R4+R2)
J2 = J1-((J1-J3)/(R4+R2))*R4;// [W/square meter]
Eb2 = J2;// [W/square meter]
// finally, we obtain the temperature of the insulated surface as
T2 = (Eb2/sigma)^(1/4);// [K]
printf("temperature of the insulated surface is %f K",T2);
printf("\n\n heat lost by the surface at 1000K is %f kW",q/1000);




