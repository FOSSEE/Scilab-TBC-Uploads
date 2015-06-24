clear;
clc;
disp('Example 1.5');



//  Given values
m = 5; //  mass,  [kg]
t1 = 15; //  inital temperature, [C]
t2 = 100; //  final temperature, [C]
c = 450; //  specific heat capacity, [J/kg K]

//  solution

//  using heat transfer equation,[1]
Q = m*c*(t2-t1); //  [J]
mprintf('\n The heat required is  =  %f  kJ\n',Q*10^-3);

//End
