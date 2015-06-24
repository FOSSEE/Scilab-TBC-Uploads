
clear;
clc;
disp('Example 1.7');


//  Given values
m = 10; //  mass of iron casting, [kg]
t1 = 200; //  initial temperature, [C]
Q = -715.5; //  [kJ], since heat is lost in this process

// From the table of average specific heat capacities
c = .50; //  specific heat capacity of casting iron, [kJ/kg K]

//  solution
//  using heat equation
//  Q = m*c*(t2-t1)

t2 = t1+Q/(m*c); // [C]

mprintf('\n The final temperature is  t2 =  %f C\n',t2);

// End
