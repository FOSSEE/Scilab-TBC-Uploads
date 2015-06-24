clear;
clc;

//Example - 15.13
//Page number - 530
printf("Example - 15.13 and Page number - 530\n\n");

//Given
T = 90;//[C]
P = 1;//[atm]
P = P*101325*10^(-3);//[kPa]
z_1 = [0.1,0.5,0.8];

// log(P_1_sat) = 13.8594 - 2773.78/(t + 220.07)
// log(P_2_sat) = 14.0098 - 3103.01/(t + 219.79)

//At T = 90 C
P_1_sat = exp(13.8594 - 2773.78/(T + 220.07));
P_2_sat = exp(14.0098 - 3103.01/(T + 219.79));
K_1 = P_1_sat/P;
K_2 = P_2_sat/P;

// For z_1 = 0.1
// y1 = (K_1*z_1(i))/(1-V+K_1*V);
// y2 = (K_2*z_2)/(1-V+K_2*V);
// We do not get a value between 0 and 1 such that, y = y1 + y2 = 1; 
// This means that at z_1 = 0.1 two phases do not exist.
// At given temperature and pressure, let us determine the equilibrium  liquid and vapour phase  compositions

x_1 = (P - P_2_sat)/(P_1_sat - P_2_sat);
y_1 = (x_1*P_1_sat)/(P);

// For two phase region to exist at 90 C and 101.325 kPa,z_1 sholud lie between x_1 and y_1

printf(" For two phase region to exist at 90 C and 101.325 kPa, z_1 sholud lie between %f and %f\n\n",x_1,y_1);
printf(" For z_1 = 0.1 and z_1 = 0.5, only liquid phase exists (V = 0).\n\n");
printf(" For z_1 = 0.8, only vapour exists (V = 1).\n")


