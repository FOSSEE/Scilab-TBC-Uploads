clear;
clc;

//Example - 3.13
//Page number - 99
printf("Example - 3.13 and Page number - 99\n\n");

//Given
V = 36;//[L] - Vol of gas on each side
P_1 = 1;//[atm] - pressure on left side of the piston
P_1 = P_1*101325;//[Pa]
T = 273.15;//[K]
P_2 = 3.375;//[atm] - Pressure on right side of the piston
P_2 = P_2*101325;//[Pa]
Y = 1.44;// Ratio of heat capacities
R = 8.314;//[J/mol*K] - Universal gas constnt

// (a)
// For total system, del(U_total) = Q. 
// Onto gas on right hand side no heat is supplied,as the piston is non conducting. Therefore,for gas on the right hand side, del(U) = -W.
// As heat is slowly supplied to the left hand side,expansion on right hand side is slow and process is adiabatic.
// For gas on right hand side, PV^(Y) = constant.
// T_2/T_1 = (P_2/P_1)^((Y - 1)/Y)
T_right = T*(P_2/P_1)^((Y - 1)/Y);//[K]

Cv_0 = R/(Y-1);//[J/mol*K] - Heat capacity at constant volume.
// Now work done on the gas on right hand side is given by
// W = (P_1*V_1 - P_2*V_2)/(Y - 1) = R*(T_2 - T_1)/(Y - 1) =  Cv_0*(T_1 - T_2)
W_left = Cv_0*(T - T_right);//[J/mol]
// Negative sign for the work done on LHS gas implies work is done on the gas

// For right hand side of the gas
// P*Vt = n*R*T
n = P_1*(V*10^(-3))/(R*T);// number of moles
W_right = (-W_left)*n;//[J] - We used negative sign for 'W_left' because it is negative in magnitude.
W_right = W_right/1000;//[kJ]
printf(" (a).Total work done on gas on the right hand side is %f kJ\n",W_right);

//(b)
printf(" (b).The final temperature of the gas on right side is %f K\n",T_right);

// (c)
// Pressure is same on both sides as piston is frictionless.
// The number of moles on both sides are also same as they have same temperature,presure and volume.
// We have (P_left*V_left)/T_left = (P_right*V_right)/T_right.
// Since P_left = P_right, (V_left/T_left) = (V_right/T-right) and also P*V^(Y) = constant.
V_right = V*(P_1/P_2)^(1/Y);//[L] - The total volume on right side 

// The total volume on right side can also be calculated using P2*V2 = n*R*T2.
// Since total volume = 72 [L], therefore volume of left side is
V_left = 2*V - V_right;//[L]
T_left = T_right*(V_left/V_right);
printf(" (c).Final temperature of the gas on the left side is %f K\n",T_left);

//(d)
//The first law applied to the total system (left side and right side) gives.
//Q - W = del(U_left) + del(U_right)
//There is no net work done by the total system as the cylinder is closed at both ends.
Q = n*Cv_0*(T_left-T) + n*Cv_0*(T_right-T);//[J]
Q = Q/1000;//[kJ]
printf(" (d).Amount of heat added to the gas on the left side is %f kJ",Q);

