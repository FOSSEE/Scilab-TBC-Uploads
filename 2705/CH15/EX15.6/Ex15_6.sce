clear;
clc;
disp('Example 15.6');

// aim : To determine
// the relative efficiency of the engine

// given values
d = 80;// bore, [mm]
l = 85;// stroke, [mm]
V1 = .06*10^6;// clearence volume, [mm^3]
ate = .22;// actual thermal efficiency of the engine
Gama = 1.4;// heat capacity ratio

// solution
sv = %pi*d^2/4*l;// stroke volume, [mm^3]
V2 = sv+V1;// [mm^3]
rv = V2/V1;
ite = 1-(1/rv)^(Gama-1);// ideal thermal efficiency
re = ate/ite;// relative thermal efficiency
mprintf('\n The relative efficiency of the engine is  =  %f percent\n',re*100);

//  End
