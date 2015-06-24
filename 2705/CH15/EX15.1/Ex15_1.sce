clear;
clc;
disp('Example 15.1');

// aim : To determine 
// the thermal efficiency of the cycle

// given values
T1 = 273+400;//  temperature limit, [K]
T3 = 273+70;// temperature limit, [K]

//  solution
//  using equation [15] of section 15.3
n_the = (T1-T3)/T1*100;// thermal efficiency 
mprintf('\n The thermal efficiency of the cycle is  =  %f percent\n',n_the);

//  End
