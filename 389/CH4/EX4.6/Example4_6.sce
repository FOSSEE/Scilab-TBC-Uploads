clear;
clc;

// Illustration 4.6
// Page: 100

printf('Illustration 4.6 - Page: 100\n\n');

// solution

//***Data***//
// a = N2
// For N2 at 300K
viscosity1 = 1.8*10^(-5);// [kg/m.s]
Pt1 = 10133;// [N/square m.sec]
T = 300;// [K]
z = 0.0254;// [m]
T2 = 393;// [K]
//***********//

Ma = 28.02;// [kg/kmol]
R = 8314;// [J/K.kgmol]
//From Eqn 4.22
lambda = (3.2*viscosity1/Pt1)*(R*T/(2*(%pi)*Ma))^0.5;
d = 10^(-4);// [m]
d_by_lambda = d/lambda;
// Kundsen flow will not occur
// N2 flow corresponding to 9 cubic ft/square ft.min at 300K & 1 std atm = 0.0457 cubic m/square m.min
Na1 = 0.0457*(273/T)*(1/22.41);// [kmol/square m.s]
Pt1_diff_Pt2 = 2*3386/13.6;// [N/square m]
Ptav = Pt1+(Pt1_diff_Pt2/2);// [N/square m]
// From Eqn. 4.26
k1 = Na1*R*T*z/(Ptav*(Pt1_diff_Pt2));// [m^4/N.s]

//For N2 at 393K
viscosity2 = 2.2*10^(-5);// [kg/m.s]
k2 = (k1*viscosity1)/(viscosity2);// [m^4/N.s]
// From Eqn 4.26
Na = (k2*Ptav*Pt1_diff_Pt2)/(R*T2*z);// [kmol/square m.s]
printf("Flow rate to be expected is %e kmol/square m.s",Na);