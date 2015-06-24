clc
//Initialization of variables
T1=520 //R
disp("From air table,")
vr1=5192
u1=-6.87 //Btu/lbm
pr1=2.504
vrat=6
p1=14.7
R=1.986
M=29
//calculations
vr2=vr1/vrat
T2=1050 //R
u2=86.1 //Btu/lbm
pr2=30.35 
p2=p1*pr2/pr1
W=u1-u2
k=1.39
p22=p1*vrat^(k)
T22=T1*(vrat)^(k-1)
W2=R*(T22-T1)/(1-k)/M
//results
printf("in case 1, Final pressure = %d psia",p2)
printf("\n in case 1, final temperature = %d R",T2)
printf("\n in case 1, work done = %.2f Btu/lbm",W)
printf("\n in case 2, Final pressure = %d psia",p22)
printf("\n in case 2, final temperature = %d R",T22)
printf("\n in case 2, work done = %.2f Btu/lbm",W2)
//The answers are a bit different due to rounding off error in textbook
