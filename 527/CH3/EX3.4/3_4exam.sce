//Engineering and Chemical Thermodynamics
// Example 3.4
//Page no : 122

clear ; clc ;
//Given 
del_h_vap = 38.56 * 10^3 ; //[J/mol] , From Table 
Tb = 78.2 + 273 ; //[K] ,From table

del_S = - del_h_vap / Tb * 10^-3 ;
disp(" Example 3.4   Page no : 122") ;
printf("\n    Change in entropy = %.4f kJ/mol K",del_S);