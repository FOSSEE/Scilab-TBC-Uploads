//clear//
clear;
clc;

//Example 23.1
//Given
T = 320; //[F]
P = 1 ; //[atm]
//(1)=CO2, (2)=H2O, (3)=O2, (4)=N2   
y_in = [0.14,0.07,0.03,0.76]';
Tw = 80; //[F]
//Solution
//(a)
//Basis
F = 100; //[mol], of gas
Ts = 120; //[F]
Cps = [9.72,8.11,7.14,6.98]';
n_in = F*y_in; //[mol]
nCp = n_in.*Cps; //
sum_nCp = sum(nCp); 
sum_n_in = sum(n_in); //[mol]
Tavg = (Ts+T)/2; //[F]
lambda_s = 1025.8*18; //[Btu/lb mol], at Ts, from Appendix 7
//Making a heat balance for z moles of water evaporated
z = sum_nCp*(T-Ts)/(lambda_s+18*(Ts-Tw));
//Total moles of water in exit gas
n_out(2) = z+n_in(2); //[mole]
//Partial pressure of the water in the exit gas
PH2O = n_out(2)/107.76*760; //[mm Hg]
//But at 120 F, PH2Oprime = 87.5 mm Hg (Appendix 7). Saturation
//temperature Ts must be greater than 120 F. Trying 
Ts = 126; // [F]
Tavg = (Ts+T)/2; //[F]
lambda_s = 1022.3*18; //[Btu/lb mol], at Ts, from Appendix 7
//Making a heat balance for z moles of water evaporated
z = sum_nCp*(T-Ts)/(lambda_s+18*(Ts-Tw));
//Total moles of water in exit gas
n_out(2) = z+n_in(2); //[mole]
//Partial pressure of the water in the exit gas
PH2O = n_out(2)/107.76*760; //[mm Hg]
//This is close enough to the value of PH2Oprime
disp('F',Ts,'Adiabatic saturation temperature');

//(b)
//for Tin = Ts, by heat balance
z = sum_nCp*(T-Ts)/(lambda_s);
n_out(2) = z + n_in(2); //[mole]
//Partial pressure of the water in the exit gas
PH2O = n_out(2)/107.85*760; //[mm Hg]
//This is higher than the vapor pressure of water at 126 F,
//103.2 mm Hg, and Ts>126 F. Trying 
Ts = 127; //[F]
Tavg = (Ts+T)/2; //[F]
lambda_s = 1021.7*18; //[Btu/lb mol], at Ts, from Appendix 7
//Making a heat balance for z moles of water evaporated
z = sum_nCp*(T-Ts)/(lambda_s);
//Total moles of water in exit gas
n_out(2) = z+n_in(2); //[mole]
//Partial pressure of the water in the exit gas
PH2O = n_out(2)/107.76*760; //[mm Hg]
//Thus 127 is too high and 126 is too low. Hence,
Ts = (126+127)/2; //[F]
disp('F',Ts,'Adiabatic saturation temperature');
