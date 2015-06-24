clear;
clc;
disp('Example 11.4');

// aim : To determine
// steam consumption

// given values
P1 = 11;// power, [kW]
m1 = 276;// steam use/h when developing power P1,[kW]
ip = 8;// indicated power output, [kW]
B = 45;// steam used/h at no load, [kg]

// solution
// using graph of Fig.11.9 
A = (m1-B)/P1;// slop of line, [kg/kWh]
W = A*ip+B;// output, [kg/h]
mprintf('\n The steam consumption is  =  %f  kg/h\n ',W);

//  End
