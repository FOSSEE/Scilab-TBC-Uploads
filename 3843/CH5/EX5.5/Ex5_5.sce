// Example 5_5
clc;funcprot(0);
// Given data
T_H=20+273;// K
T_L1=-5+273;// K
T_L2=-25+273;// K

// Calculation
// W_1=0.0933*Q_L;
// W_2=0.181*Q_L;
// Percentage increase=(W_2-W_1)/W_1
Pi=((0.181-0.0933)/0.0933)*100;// %
printf("\nThe minimum percentage increase in work required is %2.1f percentage.",Pi);
