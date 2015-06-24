// Example 1.53

clear; clc; close;

format('v',6);
// Given data
IscByIfl=5;//ratio
Sf=5;//in %
K=50;//tapping in %
 
//Calculations
Sf=Sf/100;//Slip 
//(i) Start delta 
TstByTfl=1/3*IscByIfl^2*Sf;//ratio
disp("(i) Starting torque is "+string(TstByTfl*100)+"% of full load torque.");
//(ii) Auto Transformer having 50% tapping
K=K/100;//tapping
TstByTfl=K^2*IscByIfl^2*Sf;//ratio
disp("(ii) Starting torque is "+string(TstByTfl*100)+"% of full load torque.");
