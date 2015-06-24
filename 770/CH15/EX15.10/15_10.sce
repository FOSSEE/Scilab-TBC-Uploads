clear;
clc;

//Example - 15.10
//Page number - 527
printf("Example - 15.10 and Page number - 527\n\n");

//Given
T = 50;//[C] - Temperature
P = 64;//[kPa] - Pressure
z_1 = 0.7;
z_2 = 0.3;

// log(P_sat) = A - B/(t + C)

// For acetone
A_1 = 14.37824;
B_1 = 2787.498;
C_1 = 229.664;
// For acetonitrile
A_2 = 14.88567;
B_2 = 3413.099;
C_2 = 250.523;

// At 50 C,
P_1_sat = exp(A_1 - B_1/(T + C_1));//[kPa]
P_2_sat = exp(A_2 - B_2/(T + C_2));//[kPa]

// Now let us calculate the K values of the components
K_1 = P_1_sat/P;
K_2 = P_2_sat/P;

// summation of y_i = 1, gives
// (K_1*z_1)/(1-V-K_1*V) + (K_2*z_2)/(1-V-K_2*V) = 1
// Solving we get
deff('[y]=f(V)','y=(K_1*z_1)/(1-V+K_1*V) + (K_2*z_2)/(1-V+K_2*V) -1');
V = fsolve(0.1,f);
L = 1 - V;
// Therefore
y_1 = (K_1*z_1)/(1-V+K_1*V);
y_2 = (K_2*z_2)/(1-V+K_2*V);

x_1 = y_1/K_1;
x_2 = y_2/K_2;

printf(" The value of V = %f\n",V);
printf(" The value of L = %f\n\n",L);
printf(" The liquid phase composition is, x_1 = %f and x_2 = %f\n",x_1,x_2);
printf(" The vapour phase composition is, y_1 = %f and y_2 = %f",y_1,y_2);


