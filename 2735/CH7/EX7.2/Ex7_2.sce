clc
clear
//Initialization of variables
cv=0.175 //Btu/lbm R
R0=1.986
M=29
T2=1040 //R
T1=520 //R
//calculations
cp=cv+R0/M
sab=cv*log(T2/T1)
sac=cp*log(T2/T1)
dqab=cv*(T2-T1)
dqca=cp*(T1-T2)
dqrev=T2*(sac-sab)
eta=(dqab+dqrev+dqca)/(dqab+dqrev)
//results
printf("Entropy in ab part = %.4f Btu/lbm R",sab)
printf("\n Entropy in ac part = %.4f Btu/lbm R",sac)
printf("\n Efficiency = %.2f percent",eta*100)
disp("The answers are a bit different due to rounding off error in textbook")
