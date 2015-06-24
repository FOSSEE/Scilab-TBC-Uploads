clear;
clc;

// Example 1.3
printf('Example 1.3\n\n');
//Page no. 17
// Solution

//(a)
// Converting all terms to same unit
nm = 10^(-9);//[meters]
m1 = 10;//[decimeters]
dm = (1.8*nm*m1)/(1*1);//[decimeters]
printf('(a) 1.8 nanometers is equal to %.2e dm.\n',dm);

//(b)
m2 = 39.37;//[inches]
in = (1.8*nm*m2)/(1*1);//[inches]
printf(' (b) 1.8 nanometers is equal to %.2e in.\n',in);