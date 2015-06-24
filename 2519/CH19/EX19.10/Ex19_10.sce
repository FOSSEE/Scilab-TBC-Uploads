clc
clear
//Initialization of variables
em=0.79
sigma=0.1714
T1=660 //R
T2=540 //R
T3=860 //R
//calculations
Q1=em*sigma*((T1/100)^4 -(T2/100)^4)
Q2=em*sigma*((T3/100)^4 -(T2/100)^4)
Qh1=129+Q1
Qh2=419+Q2
per=100*(Qh2-Qh1)/Qh1
//results
printf("Percentage change in total heat trasnfer = %.1f percent",per)
disp("The answer in the textbook is a bit different due to rounding off error in textbook.")
