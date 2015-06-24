//clear//  
clear;
clc;

//Example 2.1 
rho_A = 13590;
rho_B = 1260;
Pa = 14000;
gc = 1;//[ft-lb/lbf-s^2]

//Using Eq.(2.5); Zb = 250 mmHg
Pb = -(250/1000)*(9.80665/1)*13590;

//Using Eq.(2.10)
Rm = (14000+33318)/(9.80665*(13590-1260))
disp('mm',Rm,'The reading in the mamometer is (Rm) =')
