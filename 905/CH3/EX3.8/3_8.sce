clear;
clc;

// Illustration 3.8
// Page: 190

printf('Illustration 3.8 -  Page: 190\n\n');

// solution
//*****Data*****//
// 1-Nitrogen dioxide  2-air
T = 298; // [K]
P = 101.3; // [kPa]
y1 = 0.015;
V1 = 0.5; // [mass flow rate of the gas entering the adsorber, kg/s]
M1 = 46; // [gram/mole]
M2 = 29; // [gram/mole]
// Data_eqm1 = [P1 m] (where 'P1' is Partial pressure of NO2 in mm of Hg, 'm' is solid concentration in kg NO2/kg gel)
Data_eqm1 = [0 0;2 0.4;4 0.9;6 1.65;8 2.60;10 3.65;12 4.85];
//*****//

Y1 = y1*M1/((1-y1)*M2); // [kg NO2/kg air]
// For 85% removal of the NO2,
Y2 = 0.15*Y1; // [kg NO2/kg air]
// Since the entering gel is free of NO2,
X2 = 0;
// The equilibrium data are converted to mass ratios as follows:
// Yi = P1/(760-P1)*46/29 (kg NO2/kg air)  Xi = m/100 (kg NO2/kg gel)
// Equilibrium data
// Data_eqm = [Xi*100 Yi*100]
for i = 1:7;
    Data_eqm(i,2) = Data_eqm1(i,1)*M1*100/((760-Data_eqm1(i,1))*M2);
    Data_eqm(i,1) = Data_eqm1(i,2);
end

//Data_eqm = [0 0;0.4 0.42;0.9 0.83;1.65 1.26;2.6 1.69;3.65 2.11;4.85 2.54];

// The operating line for minimum slope is tangent to curve, from which we get
X1_max = 0.0375; // [kg NO2/kg gel]

wb1 = 1/(1+Y1);
Vs = V1*wb1; // [mass velocity of the air, kg/s] 
Ls_min = Vs*(Y1-Y2)/(X1_max-X2); // [kg gel/s]
Data_minSlope = [X2 Y2;X1_max Y1]*100;
// Operating line
Ls = 2*Ls_min; // [kg gel/s]

X1 = X2 + Vs*(Y1-Y2)/Ls; // [kg NO2/kg gel]

scf(4);
plot(Data_eqm(:,1),Data_eqm(:,2),Data_minSlope(:,1),Data_minSlope(:,2));
xgrid();
legend('Equilibrium line ','Minimum Flow Rate Line');
xlabel("Xa*100, kg NO2/kg gel ");
ylabel("Ya*100, kh NO2/kg air");

printf("Mass flow rate of the and the composition of the gel leaving the absorber are %f kg/s and %f\n\n",Ls,X1);