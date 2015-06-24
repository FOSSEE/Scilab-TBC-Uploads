//Chapter 9
//Page 240
//Example 9.5
//generation
clear;clc;
l = 12.5;
dF_dP = [ 0.01 8.5;0.015 9.5];
B22 = 0;B12 = 0;//since all the load is at plant 2
P1_trans = 200;
PL_trans = 16;
B11 = PL_trans / P1_trans^2;
printf("\n Penalty factors are \n L1 = 1 / (1 - %fP1) \n L2 = 1",2*B11)
P1 = (l - dF_dP(1,2)) / (2*B11 * l + dF_dP(1,1));
P2 = (l - dF_dP(2,2)) / dF_dP(2,1);
PL = B11 * P1^2;
Pr = P1 + P2 - PL;
printf("\n Required generation from plant \n P1 = %.0fMW \n P2 = %.0fMW",P1,P2)
printf("\n Power loss in transmisison is %.0fMW",PL)
printf("\n The delivered load is %.0fMW",Pr)