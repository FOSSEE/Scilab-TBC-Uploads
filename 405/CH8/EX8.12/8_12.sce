clear;
clc;
printf("\t\t\tExample Number 8.12\n\n\n");
// network for gas radiation between parallel plates
// Example 8.12 (page no.-422-423) 
// solution

T1 = 800;// [K] temperature of first plate 
E1 = 0.3;// emissivity
T2 = 400;// [K] temperature of second plate
E2 = 0.7;// emissivity
Eg = 0.2;// emissivity of gray gas
tg = 0.8;// transmissivity of gray gas 
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
// the network shown in figure 8-39(page no.-419) applies to this problem. all the shape factors are unity for large planes and the various resistors can be computed on a unit area basis as 
F12 = 1;
F1g = 1;
F2g = F1g;
R1 = (1-E1)/E1;
R2 = (1-E2)/E2;
R3 = 1/(F12*(1-Eg));
R4 = 1/(F1g*Eg);
R5 = 1/(F2g*Eg);
Eb1 = sigma*T1^(4);// [W/square meter]
Eb2 = sigma*T2^(4);// [W/square meter]
// the equivalent resistance of the center "triangle" is 
R = 1/[(1/R3)+(1/(R4+R5))];
// the total heat transfer is then 
q_by_A = (Eb1-Eb2)/(R1+R2+R);// [W/square meter]
// if there were no gas present the heat transfer would be given by equation (8-42):
q_by_A1 = (Eb1-Eb2)/[(1/E1)+(1/E2)-1];// [W/square meter]
// the radiosities may be computed from q_by_A = (Eb1-J1)*(E1/(1-E1)) = (J2-Eb2)*(E2/(1-E2))
J1 = Eb1-q_by_A*((1-E1)/E1);// [W/square meter]
J2 = Eb2+q_by_A*((1-E2)/E2);// [W/square meter]
// for the network Ebg is just the mean of these values
Ebg = (J1+J2)/2;// [W/square meter]
// so that the temperature of the gas is
Tg = (Ebg/sigma)^(1/4);// [K]
printf("the heat-transfer rate between the two planes is %f W/square meter",q_by_A);
printf("\n\n the temperature of the gas is %f K",Tg);
printf("\n\n the ratio of heat-transfer with presence of gas to without presence of gas is %f",q_by_A/q_by_A1);


