clear;
clc;

//Example - 14.20
//Page number - 490
printf("Example - 14.20 and Page number - 490\n\n");

T = 40 + 273.15;//[K]
P = 101.3;//[kPa]

// G_E/(R*T) = A*x_1*x_2

// The parameter A at 101.3 kPa and various temperatures are
A_35 = 0.479;// A at 35 C
A_40 = 0.458;// A at 40 C
A_45 = 0.439;// A at 45 C

// At 40 C, G_E/(R*T) is given by
// G_E/(R*T) = A_40*x1*x2
// Therefore log(Y1) = A_40*x2^(2) and log(Y2) = A_40*x1^(2)

dA_dT = (A_45-A_35)/(45-35);//[K^(-1)] - dA/dT
// H_E/(R*T^(2)) = -[del(G_E/(R*T))/del(T)]_P,x = (dA/dT)*x1*x2
// H_E/(R*T) = -T*(dA/dT)*x1*x2 = 1.25*x1*x2

// S_E = (H_E - G_E)/T = (-R*T^(2)*(dA/dT)*x1*x2 - A*R*T*x1*x2)/T = -(R*T*(dA/dT) + A*R)*x1*x2
// Thus S_E/R = -(T*(dA/dT) + A)*x1*x2 = 0.795*x1*x2

printf(" The expressions are  H_E/(R*T) = 1.25*x1*x2 \n\t\t    S_E/R = 0.795*x1*x2");


