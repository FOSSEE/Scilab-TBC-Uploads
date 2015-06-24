clear;
clc;

// Illustration 3.9
// Page: 194

printf('Illustration 3.9 -  Page: 194\n\n');

// solution
//*****Data*****//
// 1-Nitrogen dioxide  2-air
// From Example 3.8
Y1 = 0.0242; // [kg NO2/kg air]
Y2 = 0.0036; // [kg NO2/kg air]
Vs = 0.488; // [kg air/s]
M1 = 46; // [gram/mole]
M2 = 29; // [gram/mole]
// However here
X1 = 0;
// Data_eqm1 = [P1 m] (where 'P1' is Partial pressure of NO2 in mm of Hg, 'm' is solid concentration in kg NO2/kg gel)
Data_eqm1 = [0 0;2 0.4;4 0.9;6 1.65;8 2.60;10 3.65;12 4.85];

// The equilibrium data are converted to mass ratios as follows:
// Yi = P1/(760-P1)*46/29 (kg NO2/kg air)  Xi = m/100 (kg NO2/kg gel)
// Equilibrium data
// Data_eqm = [Xi*100 Yi*100]
for i = 1:7;
    Data_eqm(i,2) = Data_eqm1(i,1)*M1*100/((760-Data_eqm1(i,1))*M2);
    Data_eqm(i,1) = Data_eqm1(i,2);
end

// From the intersection of the minimum operating line and equilibrium curve
X2_max = 0.0034; // [kg NO2/kg gel]
S = (Y1-Y2)/(X1-X2_max); // [kg gel/kg air]
Ls_min = -S*Vs; // [kg/s]

Ls = 2*Ls_min; // [kg/s]
Data_minSlope = [X1 Y1;X2_max Y2]*100;


scf(4);
plot(Data_eqm(:,1),Data_eqm(:,2),Data_minSlope(:,1),Data_minSlope(:,2));
xgrid();
legend('Equilibrium line ','Minimum Flow Rate Line');
xlabel("Xa*100, kg NO2/kg gel");
ylabel("Ya*100, kh NO2/kg air");

printf("The mass velocity of the silica gel required for cocurrent operation is %f kg/s which is 11 times that required for countercurrent operation\n\n",Ls);