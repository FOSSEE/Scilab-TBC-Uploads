clc
clear
//Initialization of variables
n=1.3
T1=460+60 //R
P1=14.7 //psia
P2=125 //psia
R=1545
M=29
//calculations
T2=T1*(P2/P1)^((n-1)/n)
wrev=R/M *(T2-T1)/(1-n)
//results
printf("Work done = %d ft-lbf/lbm",wrev)
disp("The answer is a bit different due to rounding off error in textbook")
