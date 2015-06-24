// Example 1.56

clear; clc; close;

format('v',7);
// Given data
TmByTfl=3;//ratio
Sm=0.1;//slip at max Torque
 
//Calculations
TstByTfl_dol=2*Sm/(1+Sm^2)*TmByTfl;//ratio for D.O.L starter
disp(TstByTfl_dol,"Ratio of starting torque to full load torque for D.O.L starter : ");
TstByTfl=1/3*TstByTfl_dol;//ratio for star delta starting
disp(TstByTfl,"Ratio of starting torque to full load torque for star delta starter : ");
//Anser of first part is not given in the book.
