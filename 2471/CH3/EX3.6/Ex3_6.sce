clear ;
clc;
// Example 3.6
printf('Example 3.6\n\n');
printf('Page No. 67\n\n');

// given
P = 9000;// Capital Cost in Pound
n = 5;// Project lifetime
Less_dep = 8000;// Less Depreciation

//For Project A
d1 = [4500 3750 3000 1500 750 ]// Saving in every year (before depreciation)
dT1 = sum (d1)
Net_S1 = dT1- Less_dep;// Total Net Saving
Avg1 = Net_S1/n;// Average net annual saving
R_R1 = (Avg1/P)*100;

//For Project 
d2 = [750 2250 4500 4500 1500 ]// Saving in every year (before depreciation)
dT2 = sum (d2)
Net_S2 = dT2- Less_dep;// Total Net Saving
Avg2 = Net_S2/n;// Average net annual saving
R_R2 = (Avg2/P)*100;

printf('The percentage of Rate of Return on original investment for Project A is %3.1f \n',R_R1)
printf('The percentage of Rate of Return on original investment for Project B is %3.1f \n',R_R2)



