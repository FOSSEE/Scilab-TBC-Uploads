clear;
clc;

// Example 1.5
printf('Example 1.5\n\n');
//Page no.20
// Solution

// Basis 1 min
// Assume 100lb means 100 lb mass 
g = 10^6 ;//[ug mol]
lb = 454 ;//[g mol]
ml = .001 ;//[L]
L = 3.531*10^(-2);//[ft^3]
hr = 60 ;//[min]
dy = 24 ;//[hr]
pr_rate = (0.6*1*1*1*hr*dy/(g*lb*ml*L)); //[ft*lbf]

printf('Production rate of glucose is %.4f lb mol/(cubic feet*day).\n',pr_rate);