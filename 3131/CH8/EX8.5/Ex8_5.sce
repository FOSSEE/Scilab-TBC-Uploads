clear all; clc;
disp("Ex 8_5")
// Equations of equilibrium give:
// Summing forces in Y dirction
NC=400
mub=0.2//coefficient of friction
NB=400
FB=mub*NB// post slips at B only
//Summing moments about C and equating to zero
P=(FB*1)/0.25
// summing forces in X direction and equating to zero
FC=P-FB
printf('\n\n P = %0.0f N \n FC = %0.0f N \n NC = %0.0f N',P,FC,NC)
// FC>200, hence slip at C should be considered
FC1=0.5*NC
FB1=66.7
P1=FB1+FC1
printf('\n\n P = %0.0f N \n NC = %0.0f N \n FC = %0.0f N \n FB = %0.1f N',P1,NC,FC1,FB1)
