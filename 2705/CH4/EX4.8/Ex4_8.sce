clear;
clc;
disp('Example 4.8');

//  aim : To determine 
//  the specific volume of wet steam

//  Given values
P = 1.25; //  pressure, [MN/m^2]
x = .9; //  dry fraction

//  solution
//  from steam table at given pressure
vg = .1569;//  [m^3/kg]
//  hence
v = x*vg; //  [m^3/kg]

mprintf('\nThe specific volume of wet steam is  =  %f  m^3/kg \n',v);

//  End
