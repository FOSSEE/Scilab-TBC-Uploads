// Example 1.58

clear; clc; close;

format('v',7);
// Given data
IscByIfl=3*180/100;//ratio
TstByTfl=0.35;//ratio
X=80/100;//tapping
 
//Calculations
//Formula : TstByTfl=1/3*(IscByIfl^2)*Sfl
Sfl=TstByTfl/IscByIfl^2*3;//slip at full load
IstByIsc=X^2;//ratio
IstByIfl=IstByIsc*IscByIfl;//ratio
disp("Starting current is "+string(IstByIfl)+" times of full load current.");
TstByTfl=X^2*IscByIfl^2*Sfl;//ratio
disp("Starting torque is "+string(TstByTfl*100)+"% of full load torque.");
