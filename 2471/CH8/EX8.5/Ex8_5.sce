clear ;
clc;
// Example 8.5
printf('Example 8.5\n\n');
printf('Page No. 232\n\n');

//given
P = 600*10^3;// Power demand of pump in W
T = 8;// Operating time in hour per day
red = 1.00/10^3;// off-peak reduction in Pound per 10^3 W month
M_save = P*red;//  Monthly saving Pound per month
A_save = M_save*12;// Annual saving in Pound per year
printf('Annual saving is %.0f Pound per year',A_save)
