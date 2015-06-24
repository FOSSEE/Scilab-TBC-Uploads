clear;
clc;

//Example - 15.18
//Page number - 541
printf("Example - 15.18 and Page number - 541\n\n");

//Given
T = 343.15;//[K] - Temperature
// At 343.15 K
// log(Y1) = 0.95*x_2^(2)
// log(Y2) = 0.95*x_1^(2)
P_1_sat = 79.80;//[kPa]
P_2_sat = 40.50;//[kPa]

// At x_1 = 0,
Y1_infinity = exp(0.95);
alpha_12_x0 = (Y1_infinity*P_1_sat)/(P_2_sat);
// At x_1 = 1,
Y2_infinity = exp(0.95);
alpha_12_x1 = (P_1_sat)/(Y2_infinity*P_2_sat);

// Within the range alpha_12_x0 and alpha_12_x1, the relative volatility  continuously decrease and thus a value of 1.0 is obtained and thus azeotrope is formed.
// At azeotrope, Y1*P1_sat = Y2*P2_sat
// Y2/Y1 = P_1_sat/P_2_sat
// Taking logarithm of both sides we get
// log(Y2) - log(Y1) = log(P_1_sat/P_2_sat)
// 0.95*x_1^(2) - 0.95*x_2^(2) = log(P_1_sat/P_2_sat)
// Solving the above equation
deff('[y]=f(x_1)','y=0.95*x_1^(2) - 0.95*(1-x_1)^(2) - log(P_1_sat/P_2_sat)');
x_1 = fsolve(0.1,f);

// At x_1
x_2 = 1 - x_1;
Y1 = exp(0.95*x_2^(2));
Y2 = exp(0.95*x_1^(2));
P = x_1*Y1*P_1_sat + x_2*Y2*P_2_sat;//[kPa] - Azeotrope pressure
y_1 = (x_1*Y1*P_1_sat)/P;

// Since x_1 = y_1, (almost equal) ,the above condition is of azeotrope formation

// Since alpha_12 is a continuous curve and in between a value of alpha_12 = 1, shall come and at this composition the azeotrope shall get formed.

printf(" Since (alpha_12_x=0) = %f and (alpha_12_x=1) = %f \n",alpha_12_x0,alpha_12_x1);
printf(" and since alpha_12 is a continuous curve and in between a value of alpha_12 = 1, shall come and at this composition the azeotrope shall get formed.\n\n")
printf(" The azeotrope composition is x_1 = y_1 = %f\n\n",x_1);
printf(" The azeotrope presssure is %f kPa\n",P);

