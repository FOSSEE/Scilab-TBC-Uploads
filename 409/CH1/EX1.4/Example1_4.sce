clear ;
clc;

// Example 1.4
printf('Example 1.4\n\n');
//Page no. 19
// Solution

// Potential Energy =  mgh
// Assume 100 lb means 100 lb mass 
m = 100;//[lb]
g = 32.2 ;//[ft/second square]
h = 10 ;//[ft]
gc = 32.174 ;//[(ft*lbm)/(second square/lbf)]
pe = (m*(g/gc)*h) ;//[ft*lbf]
printf('Potential Energy  is equal to %i (ft)(lbf).\n',pe);