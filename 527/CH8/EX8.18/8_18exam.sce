//Engineering and Chemical Thermodynamics
//Example 8.18
//Page no :418

clear ; clc ;
//Given 
T_b = 373.15 ; //[K]
del_h_vap = 2257 ; //[J/g]
MW_salt = 58.5 ; //[g/mol]
MW_water = 18 ; //[g/mol]
w_salt = 3.5 ;
w_water = 100 - w_salt ;
R = 8.314 ;

x_salt = (w_salt / MW_salt) / (w_salt / MW_salt + w_water / MW_water) ;
x_b = 2 * x_salt ;// We assume NaCl completely dissociates into Na+ & Cl- ions

del_T = R * T_b^2 / (del_h_vap * MW_water)* x_b ;
disp(" Example: 8.18   Page no : 418") 
printf("\n    The temperature that sea water boils is = %.2f degreeC",100 + del_T);