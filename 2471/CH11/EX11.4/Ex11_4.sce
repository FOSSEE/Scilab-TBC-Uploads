clear ;
clc;
// Example 11.4
printf('Example 11.4\n\n');
printf('Page No. 316\n\n');

//given
Cm_S = 10000;// Company saving in Pound per annum
S = Cm_S/12;// Saving in Pound per months
Ca_C = 10500;// Capital cost in Pound
Ins_C = 7500;// Installation cost in Pound
T_C = Ca_C + Ins_C;// Total cost in Pound
T = T_C/S;// pay-back time in months
printf('The pay-back period was %.0f months\n',T)
