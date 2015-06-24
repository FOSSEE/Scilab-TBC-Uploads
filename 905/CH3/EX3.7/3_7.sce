clear;
clc;

// Illustration 3.7
// Page: 183

printf('Illustration 3.7 -  Page: 183\n\n');

// solution
//*****Data*****//
// 1-benzene a-absorber s-steams
T = 300; // [K]
P = 101.3; // [kPa]
R = 8.314; // [gas constant]
v = 1; // [cubic m/s]
// Gas in
y1a = 0.074;
// Liquid in
x2a = 0.0476
// Recovery is 85 %
// Calculations for absorber section

V1a = P*v/(R*T); // [kmole/s]
// Inert gas molar velocity
Vsa = V1a*(1-y1a); // [kmole/s]
Y1a = y1a/(1-y1a); // [kmole of benzene/kmole of dry gas]

X2a = x2a/(1-x2a); // [kmole of benzene/kmole of oil]
// Since the absorber will recover 85% of the benzene in the entering gas, the concentration of the gas leaving it will be
r = 0.85;
Y2a = (1-r)*Y1a; // [kmole of benzene/kmole of dry gas]
// The benzene-wash oil solutions are ideal, and the pressure is low; therefore, Raoult’s law applies. From equations 3.1, 3.44, and 3.45
//      yia = 0.136*xia
// or   Yia/(1+Yia) = 0.136*Xia/(1+Xia)

// Data_eqm = [Xia Yia]
Data_eqm = [0 0;0.1 0.013;0.2 0.023;0.3 0.032;0.4 0.04;0.6 0.054;0.8 0.064;1 0.073;1.2 0.080;1.4 0.086];

// Here because of the shape of equilibrium curve, the operating line for minimum oil rate must be tangent to curve
// Therefore
// From the curve X1a_max = 0.91
X1a_max = 0.91; // [kmol benzene/kmol oil]

// For minimum operating line slope is 
S = (Y1a-Y2a)/(X1a_max-X2a); // [kmol oil/kmol air]
// Therfore
Lsa_min = S*Vsa; // [kmole oil/s]
Data_minSlope1 = [X2a Y2a;X1a_max Y1a];
 
// For Actual operating line, oil flow rate is twice the minimum
Lsa = 2*Lsa_min; // [kmole oil/s]
M_oil = 198; // [molecular weight of oil, gram/mole]

Wsa = Lsa*M_oil; // [mass flow rate of oil, kg/s]
// Using equation 3.47 to calculate the actual concentration of the liquid phase leaving the absorber
X1a = X2a + Vsa*(Y1a-Y2a)/Lsa; // [kmol benzene/kmol oil]
Data_opline1 = [X2a Y2a;X1a Y1a];

scf(1);
plot(Data_eqm(:,1),Data_eqm(:,2),Data_minSlope1(:,1),Data_minSlope1(:,2),Data_opline1(:,1),Data_opline1(:,2));
xgrid();
legend('Equilibrium line for absorber','Minimum Flow Rate Line for absorber','Operating Line for absorber');
xlabel("Xa, mole benzene/mole oil");
ylabel("Ya, mole benzene/mole air");

// Calculations for stripping section
Lss = Lsa;
X2s = X1a;
X1s = X2a;
Y1s = 0;
T = 373; // [K]
// Applying Raoult’s law at this temperature gives us
// yis = 1.77*xis
// Yis/(1+Yis) = 1.77*Xis/(1+Xis)

// Equilibrium data 
// Data_equm = [Xis Yis]
Data_equm = [0 0;0.05 0.092;0.1 0.192;0.15 0.3;0.2 0.418;0.25 0.548;0.3 0.691;0.35 0.848;0.4 1.023;0.45 1.219;0.5 1.439];

// Similar procedure as above is followed
// The operating line for minimum oil rate must be tangent to curve 
// Therefore from the curve
Y2s_max = 1.175; // [kmol benzene/kmol steam]
S = (Y2s_max-Y1s)/(X2s-X1s); // [kmole oil/kmole steam]
Vss_min = Lss/S; // [kmole/s]
Vss = 1.5*Vss_min; // [kmole/s]
Mss = 18; // [molecular weight of steam, gram/mole]
Wss = Vss*Mss; // [kg steam/s]

Data_minSlope2 = [X1s Y1s;X2s Y2s_max];

Y2s_act = Y1s + Lss*(X2s-X1s)/Vss; // [kmol benzene/kmol steam]

Data_opline2 = [X1s Y1s;X2s Y2s_act];


scf(2);
plot(Data_equm(:,1),Data_equm(:,2),Data_minSlope2(:,1),Data_minSlope2(:,2),Data_opline2(:,1),Data_opline2(:,2));
xgrid();
legend('Equilibrium line for stripping','Minimum Flow Rate for stripping Line','Operating Line for stripping');
xlabel("Xa, mole benzene/mole oil");
ylabel("Ya, mole benzene/mole air");

printf("The oil circulation rate and steam rate required for the operation is %f kg/s %f kg steam/s respectively\n\n",Wsa,Wss); 