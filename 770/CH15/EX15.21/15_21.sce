clear;
clc;

//Example - 15.21
//Page number - 544
printf("Example - 15.21 and Page number - 544\n\n");

//Given
T = 50;//[C]
// At 50 C
P_1_sat = 0.67;//[atm]
P_2_sat = 0.18;//[atm]
Y1_infinity = 2.5;
Y2_infinity = 7.2;

//(1)
// alpha_12 = (y_1/x_1)/(y_2/x_2) = (Y1*P_1_sat)/((Y2*P_2_sat))
// At  x_1 tending to zero,
alpha_12_x0 = (Y1_infinity*P_1_sat)/(P_2_sat);
// At  x_1 tending to 1,
alpha_12_x1 = (P_1_sat)/((Y2_infinity*P_2_sat));

// Since alpha_12 is a continuous curve and in between a value of alpha_12 = 1, shall come and at this composition the azeotrope shall get formed.
printf(" (1).Since (alpha_12_x=0) = %f and (alpha_12_x=1) = %f \n",alpha_12_x0,alpha_12_x1);
printf("     and since alpha_12 is a continuous curve and in between a value of alpha_12 = 1, shall come and at this composition azeotrope shall get formed.\n\n")

//(b)
// Since the activity coefficient values are greater than 1 ,therefore the deviations from Roult's law is positive
// and the azeotrope is maximum pressure (or minimum boiling)
printf(" (2).Since the activity coefficient values are greater than 1 ,therefore the deviations from Roults law is positive\n");
printf("     and the azeotrope is maximum pressure (or minimum boiling)\n\n");

//(3)
// Let us assume the system to follow van Laar activity coefficient model
A = log(Y1_infinity);
B = log(Y2_infinity);

// log(Y1) = A/(1+ (A*x_1)/(B*x_2))^(2)
// log(Y2) = B/(1+ (B*x_2)/(A*x_1))^(2)

// At the azeotrope  point, Y1*P1_sat = Y2*P2_sat
// log(Y1) - log(Y2) = log(P_2_sat/P_2_sat)
// On putting the values and then solving the above equation
deff('[y]=f(x_1)','y= A/(1+ (A*x_1)/(B*(1-x_1)))^(2)- B/(1+ (B*(1-x_1))/(A*x_1))^(2) - log(P_2_sat/P_1_sat)');
x_1 = fsolve(0.1,f);

// At x_1
x_2 = 1 - x_1;
Y1 = exp(A/(1+ (A*x_1)/(B*x_2))^(2));
Y2 = exp(B/(1+ (B*x_2)/(A*x_1))^(2));
P = x_1*Y1*P_1_sat + x_2*Y2*P_2_sat;//[kPa] - Azeotrope pressure
y_1 = (x_1*Y1*P_1_sat)/P;

// Since x_1 = y_1,the azeotrope formation will take place

printf(" (3).The azeotrope composition is x_1 = y_1 = %f\n",x_1);
printf("     The azeotrope presssure is %f atm\n",P);

