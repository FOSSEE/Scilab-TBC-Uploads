clear;
clc;
disp('Example 1.8');

 

// Given values
m = 4; //  mass of the liquid, [kg]
t1 = 15; //  initial temperature, [C]
t2 = 100; //  final temperature, [C]
Q = 714; //  [kJ],required heat to accomplish this change

//  solution
//  using heat equation
//  Q=m*c*(t2-t1)

//  calculation of c
c=Q/(m*(t2-t1)); //  heat capacity, [kJ/kg K] 

mprintf('\n The specific heat capacity of the liquid is  c =  %f  kJ/kg K\n',c);

//End
