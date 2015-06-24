clear;
clc;

// Illustration 8.8
// Page: 495

printf('Illustration 8.8 -  Page: 495\n\n');

// solution (a)
printf('Illustration 8.8 (a) -  Page: 495\n\n');

// a - water vapor   b - air
//****Data****//
T_L2 = 314; // [inlet water temperature, K]
T_L1 = 303; // [outlet water temperature, K]
T_d = 306; // [dry bulb temperature ,K]
T_w1 = 298; // [wet bulb temperature, K]
Z = 3; // [packed tower depth, m]
G_x = 3; // [mass velocity, kg/square m.s]
G_s =2.7; // [mass velocity, kg/square m.s]
//*****//

T_o = 273; // [reference temperature, K]
C_al = 4.187; // [kJ/kg.K]
C_pb = 1.005; // [kJ/kg.K]
C_pa = 1.884; // [kJ/kg.K]
P_total = 101.325; // [kPa]
lambda_0 = 2502.3; // [kJ/kg]
M_a = 18.02; // [gram/mole]
M_b = 28.97; // [gram/mole]

// Equilibrium Data:
// Data  = [Temp.(K),H_eqm(kJ/kg)],[H_eqm - Equilibrium gas enthalpy]
Data_eqm = [273 9.48;283 29.36;293 57.8;303 99.75;313 166.79;323 275.58;333 461.5];

scf(4);
plot(Data_eqm(:,1),Data_eqm(:,2));
xgrid();
legend('Equilibrium line');
xlabel("Liquid Temperature, K");
ylabel("Enthalphy Of Air Water vapour, kJ / kg dry air");

P_a = exp(16.3872-(3885.7/(T_w1-42.98))); // [kPa]
Y_m1 = P_a/(P_total-P_a)*(M_a/M_b); // [kg water/kg dry air]
H_g1 = C_pb*(T_w1-T_o) + Y_m1*(C_pa*(T_w1-T_o)+lambda_0); // [Enthalpy of saturated mixture, kJ/kg dry air]

// From overall energy balance
H_g2 = H_g1 + G_x*C_al*(T_L2-T_L1)/G_s; // [Enthalpy of exit air, kJ/kg]

// For calculation of mass transfer unit, Ntog
// Data1 = [T_L1 H_g1,.....,T_L2 H_g2]
Data1 = zeros(10,2);
deltaT = (T_L2-T_L1)/9;
for i = 1:10
    Data1(i,1) = T_L1 + (i-1)*deltaT;
    Data1(i,2) = H_g1 + G_x*C_al*(Data1(i,1)-T_L1)/G_s;
end

// Data for enthalpy of exit air at different temperature varying from T_L1 to T_L2, operating line
Data1 = [303 76.17;304.22 81.85;305.44 87.53;306.67 93.22;307.89 98.91;309.11 104.59;310.33 110.28;311.56 115.96;312.78 121.65;314 127.35];

// Data of equilibrium gas enthalpy at different temperature varying from T_L1 to T_L2 from the above equilibrium graph 
Data2 = [303 100;304.22 107.93;305.44 116.12;306.67 124.35;307.89 132.54;309.11 140.71;310.33 148.89;311.56 157.14;312.78 165.31;314 177.67];

// Driving force 
Data3 = zeros(10,2);
// Data3 =[Equilibrium gas enthalpy, driving force]
for i = 1:10
    Data3(i,1) = Data1(i,2);
    Data3(i,2) = 1/(Data2(i,2)-Data1(i,2));
end

// The data for Equilibrium gas enthalpy as abcissa is plotted against driving force
Area = 1.642;
N_tog = 1.642;
H_tog = Z/N_tog; // [m]

// Overall volumetric mass-transfer coefficient, K_ya
K_ya = G_s/H_tog;
printf("Overall volumetric mass-transfer coefficient is %f kg/cubic m.s\n\n",K_ya);

// Solution (b)
printf('Illustration 8.8 (b) -  Page: 495\n\n');

T_w2 = 288; // [New entering-air wet-bulb temperature, K]
P_a2 = exp(16.3872-(3885.7/(T_w2-42.98))); // [kPa]
Y_m2 = P_a2/(P_total-P_a2)*(M_a/M_b); // [kg water/kg dry air]
H_g11 = C_pb*(T_w2-T_o) + Y_m2*(C_pa*(T_w2-T_o)+lambda_0); // [Enthalpy of saturated mixture, kJ/kg dry air]

// the change in water temperature through the tower must remain the same as in part (a), namely T_L2b-T_L1b = 11K 
// Since N_tog is a function of both water temperatures(T_L1',T_L2'), this provides the second relation needed to calculate the values of T_L2b and T_L1b
// The two equations are solved simultaneously by trial and error method, from above we get T_L1' = 297K
T_L1b = 297; // [K]
T_L2b = T_L1b + 11; //[K]
S =  T_L1b - T_w2; // [wet bulb temperature approach, K]
printf("The outlet water temperature and wet bulb temperature approach is %f K and %f K respectively ",T_L1b,S);
