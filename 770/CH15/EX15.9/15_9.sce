clear;
clc;

//Example - 15.9
//Page number - 526
printf("Example - 15.9 and Page number - 526\n\n");

//Given
T = 27;//[C] - Temperature
z_1 = 0.4;
z_2 = 0.3;
z_3 = 0.3;

// log(P_sat) = A - B/(t + C)

// For propane
A_1 = 13.7713;
B_1 = 1892.47;
C_1 = 248.82;
// For i-butane
A_2 = 13.4331;
B_2 = 1989.35;
C_2 = 236.84;
// For n-butane
A_3 = 13.7224;
B_3 = 2151.63;
C_3 = 236.91;

//(a)
// The pressure range for the existence of two phase region lies between dew point and bubble point pressures.
// At the dew point the whole feed lies in the vapour phase and a drop of liquid is formed, therefore
y_1 = z_1;
y_2 = z_2;
y_3 = z_3;

// At 27 C,
P_1_sat = exp(A_1 - B_1/(T + C_1));
P_2_sat = exp(A_2 - B_2/(T + C_2));
P_3_sat = exp(A_3 - B_3/(T + C_3));

// The dew point pressure is given by
P_1 = 1/(y_1/P_1_sat + y_2/P_2_sat + y_3/P_3_sat); 

// At the bubble point the whole feed lies in the liquid phase and an infinitesimal amount of vapour is formed, therefore
x_1 = z_1;
x_2 = z_2;
x_3 = z_3;

// The bubble point pressure is given by
P_2 = x_1*P_1_sat + x_2*P_2_sat + x_3*P_3_sat;

printf(" (a).The two phase region exists between %f and %f kPa\n\n",P_1,P_2);

//(b)
// The mean of the two-phase pressure range is given by
P_mean = (P_1 + P_2)/2;

// Now let us calculate the K values of the components
K_1 = P_1_sat/P_mean;
K_2 = P_2_sat/P_mean;
K_3 = P_3_sat/P_mean;

// summation of y_i = 1, gives
// (K_1*z_1)/(1-V-K_1*V) + (K_2*z_2)/(1-V-K_2*V) + (K_3*z_3)/(1-V-K_3*V) = 1
// Solving we get
deff('[y]=f(V)','y=(K_1*z_1)/(1-V+K_1*V) + (K_2*z_2)/(1-V+K_2*V) + (K_3*z_3)/(1-V+K_3*V)-1');
V = fsolve(0.1,f);

y_1_prime = (z_1*K_1)/(1-V+K_1*V);

printf(" (b).The mole fraction of propane in vapour phase is %f whereas in the feed is %f and fraction of vapour in the system is %f",y_1_prime,z_1,V);


