//Caption: Uniform Distribution
//Example6.6
//Page181
clear;
clc;
a = 230; // lower limit
b = 450; //upper limit
P = (1/(b-a)); //uniform distribution of daily demand for packed meals
Demand = 0.8; //service level of satisfying the demand of the canteen
Q = (1/P)*Demand+a;
disp(Q,'The demand of the product which can be satisfied w.r.to the given service level is=')
//Result
//The demand of the product which can be satisfied w.r.to the given service level is=   
// 
//    406. 