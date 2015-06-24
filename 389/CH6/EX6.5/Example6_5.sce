clear;
clc;

// Illustration 6.5
// Page: 200

printf('Illustration 6.5 - Page: 200\n\n');

// solution

// ****Data****//
G = 0.80;// [cubic m/s]
P = 10^2;// [kN/square m]
XaG = 0.07;
Temp = 273+30;// [K]
L = 3.8;// [kg/s]
Density_L = 1235;// [kg/cubic m]
viscocity_L = 2.5*10^(-3);// [kg/m.s]
//******//

// a = SO2 b = air

// Solution (a) 

// Since the larger flow quantities are at the bottom for an absorber, the diameter will be choosen to accomodate the bottom condition
Mavg_G = XaG*64+((1-XaG)*29);// [kg/kmol]
G1 = G*(273/Temp)*(P/101.33)*(1/22.41);// [kmol/s]
G2 = G1*Mavg_G;// [kg/s]
Density_G = G2/G;// [kg/cubic m]
// Assuming Complete absorption of SO2
sulphur_removed = G1*XaG*64;// [kg/s]
abcissa = (L/G)*((Density_G/Density_L)^0.5);
//From Fig. 6.24, using gas pressure drop of 400 (N/square m)/m
ordinate = 0.061;
// For 25 mm ceramic Intalox Saddle:
Cf = 98;// [Table 6.3 Pg 196]
J = 1;
G_prime = (ordinate*Density_G*(Density_L-Density_G)/(Cf*viscocity_L^0.1*J))^0.5;// [kg/square m.s]
A = G2/G_prime;// [square m]
D = (4*A/%pi)^0.5;// [m]
printf("The Tower Diameter is %f m\n",D);

// Solution (b)

// Let
D = 1;// [m]
A = %pi*D^2/4;// [square m]
// The pressure drop for 8 m of irrigated packing
delta_p = 400*8;// [N/square m]
// For dry packing
G_prime = (G2-sulphur_removed)/A;// [kg/square m.s]
P = P-(delta_p/1000);// [kN/square m]
Density_G = (29/22.41)*(273/Temp)*(P/101.33);// [kg/cubic m]
// From Table 6.3 (Pg 196)
Cd = 241.5;
// From Eqn. 6.68
delta_p_by_z = Cd*G_prime^2/Density_G;// [N/square m for 1m of packing]
pressure_drop = delta_p+delta_p_by_z;// [N/square m]
V = 7.5;// [m/s]
head_loss = 1.5*V^2/2;// [N.m/kg]
head_loss = head_loss*Density_G;// [N/square m]
Power = (pressure_drop+head_loss)*(G2-sulphur_removed)/(Density_G*1000);// [kW]
eta = 0.6;
Power = Power/eta;// [kW]
printf("The Power for the fan motor is %f kW\n",Power);