clear;
clc;
printf("\t\t\tExample Number 8.14\n\n\n");
// Transmitting and reflecting system for furnace opening
// Example 8.14 (page no.-434-435) 
// solution

T1 = 1000+273;// [K] temperature of furnace
lambda = 4.0;// [micro meter]
//for  0 < lambda < 4 micro meter
t1 = 0.9;
E1 = 0.1;
rho1 = 0;
//for  4 micro meter < lambda < infinity  
t2 = 0;
E2 = 0.8;
rho2 = 0.2;
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
T3 = 30+273;// [K] room temperature
// the diagram of this problem is shown in figure example 8-14(page no.-434). because the room is large it may be treated as a blackbody also.
// we shall analyze the problem by calculating the heat transfer for each wavelength band and then adding them together to obtain the total. the network for each band is a modification of figure 8-57(page no.-430), as shown here for black furnace and room. we shall make the calculation for unit area; then 
A1 = 1.0;// [square meter]
A2 = 1.0;// [square meter]
A3 = 1.0;// [square meter]
F12 = 1.0;
F13 = 1.0;
F32 = 1.0;
// the total emissive powers are 
Eb1 = sigma*T1^(4);// [W/square meter]
Eb3 = sigma*T3^(4);// [W/square meter]
// to determine the fraction of radiation in each wavelength band, we calculate
lamba_into_T1 = lambda*T1;// [micro meter K]
lamba_into_T3 = lambda*T3;// [micro meter K]
// consulting table 8-1(page no.-379-380), we find 
Eb1_0_to_4 = 0.6450*Eb1;// [W/square meter]
Eb3_0_to_4 = 0.00235*Eb3;// [W/square meter]
Eb1_4_to_inf = (1-0.6450)*Eb1;// [W/square meter]
Eb3_4_to_inf = (1-0.00235)*Eb3;// [W/square meter]
// we now apply these numbers to the network for the two wavelengths bands, with unit areas.

// 0 < lambda < 4 micro meter band:
R1 = 1/(F13*t1);
R2 = 1/(F32*(1-t1));
R3 = 1/(F12*(1-t1));
R4 = rho1/(E1*(1-t1));
// the net heat transfer from the network is then 
R_equiv_1 = 1/(1/R1+1/(R2+R3+R4));
q1 = (Eb1_0_to_4-Eb3_0_to_4)/R_equiv_1;// [W/square meter]

// 4 micro meter < lambda < infinity band:
R2 = 1/(F32*(1-t2));
R3 = 1/(F12*(1-t2));
R4 = rho2/(E2*(1-t2));
// the net heat transfer from the network is then 
// R1 is infinity
R_equiv_2 = R2+R3+R4*2;
q2 = (Eb1_4_to_inf-Eb3_4_to_inf)/R_equiv_2;// [W/square meter]

// the total heat loss is then 
q_total = q1+q2;// [W/square meter]
// with no windows at all, the heat transfer would have been the difference in blackbody emissive powers,
Q = Eb1-Eb3;// [W/square meter]
printf("radiation lost through the quartz window to a room temperature of 30 degree celsius is %f W/square meter",q_total);
printf("\n\n with no windows at all, the heat transfer would be %e W/square meter",Q);












