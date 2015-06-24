clear ;
clc;
// Example 17.4
printf('Example 17.4\n\n');
//Page no. 522
// Solution Fig E17.4

F = 30 ;// Volume of initial gas-[m^3]
P_F =  98.6 ;// Pressure of gas-[kPa]
T_F =  273+100 ;// Temperature of gas-[K]
P_p = 109 ;//[kPa]
T_p = 14+273 ;// Temperature of gas-[K]
R = 8.314 ;// [(kPa*m^3)/(k mol*K)] 
// Additional condition
vpW_30 = 4.24 ;//Vapour pressure-[kPa]
vpW_14 = 1.60 ;//Vapour pressure-[kPa]
n_F = (P_F*F)/(R*T_F) ;// Number of moles in F

// Material balance to calculate  P & W
P = (n_F*((P_F-vpW_30)/P_F))/((P_p-vpW_14)/P_p) ;// P from mat. bal. of air -[kg mol]
W = (n_F*(vpW_30/P_F))- P*(vpW_14/P_p); // W from mat. bal. of water -[kg mol]
iW = n_F*(vpW_30/P_F) ;// Initial amount of water -[kg mol]
fr_con = W/iW ;//Fraction of water condenseed 

printf('\n Fraction of water condenseed %.3f.',fr_con);