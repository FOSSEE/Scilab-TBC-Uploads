clear ;
clc;
// Example 3.8
printf('Example 3.8\n\n');
printf('Page No. 69\n\n');

//Refer figure 3.6
// given
n = 5;//years
C = 80000;// COst of the project in Pound
S = 0;// Zero Salvage Value
A_E = [10000 20000 30000 40000 50000]// Annual Net cash flow for project E in Pound
C_E = [10000 30000 60000 100000 150000]// Cummulative Net cash flow for project E in Pound
A_F = [50000 40000 30000 20000 10000]// Annual Net cash flow for project F in Pound
C_F = [50000 90000 120000 140000 150000]// Cummulative Net cash flow for project F in Pound

//From the figure 3.6 (intercept of x-axis)
P_F = 1.75;// in years
P_E = 3.5;// in years
printf('The pay-back time of project F is %.2f \n',P_F)
printf('The pay-back time of project E is %.1f \n\n',P_E)

printf('As the pay-back time is less for project F,\nProject F would always be choosen in practice\nsince prediction of savings in the early years are more reliable than long-term predictions.')
