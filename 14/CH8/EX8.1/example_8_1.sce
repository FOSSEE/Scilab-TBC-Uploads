//Chapter 8
//Page 200
//Example 8.1
//NewtonRaphson
clear;clc;
//Given
P = 100e6;
V = 138e3;
//From Table 8.1
R_12 = 0.042;R_15 = 0.031;R_23 = 0.031;
R_34 = 0.084;R_25 = 0.053;R_45 = 0.063;
X_12 = 0.168;X_15 = 0.126;X_23 = 0.126;
X_34 = 0.336;X_25 = 0.210;X_45 = 0.252;
//From Table 8.2
V1 = 1.04;V2 = 1;V3 = 1.02;V4 = 1;V5 = 1;
P_2 = 115e6;
//Calculation
Y_21 = - 1 / (R_12 + %i * X_12);
printf("\n Y21 = %.2f /_%.2f per unit",abs(Y_21),atan(imag(Y_21),real(Y_21))*180/%pi)
Y_23 = - 1 / (R_23 + %i * X_23);
printf("\n Y23 = %.2f /_%.2f per unit \n\n",abs(Y_23),atan(imag(Y_23),real(Y_23))*180/%pi)
Y_21mag = abs(Y_21);Y_21ang = atan(imag(Y_21),real(Y_21));
Y_23mag = abs(Y_23);Y_23ang = atan(imag(Y_23),real(Y_23));
Y_22 = - Y_21 - Y_23;
Y_24 = 0;Y_25 = 0;
P0_2calc = (V2 * V1 * Y_21mag * cos(Y_21ang)) - (V2 * V2 * Y_21mag * cos(Y_21ang)) - (V2 * V2 * Y_23mag * cos(Y_23ang)) + (V2 * V3 * Y_23mag * cos(Y_23ang));
P_2scheduled = - P_2 / P;
printf("\n Scheduled power into the network at bus 2 is %.2f per unit\n",P_2scheduled)
delta_P0_2 = P_2scheduled - P0_2calc;
delP_2_3 = - V2 * V3 * Y_23mag * sin(Y_23ang);
printf("\nDifference between calculated value and scheduled value = %.4f per unit\n",delta_P0_2)
printf("\nThe value of the second element in the first row of the Jacobian = %.4f per unit \n",delP_2_3)