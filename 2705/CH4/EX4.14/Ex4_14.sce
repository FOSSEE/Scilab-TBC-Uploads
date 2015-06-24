clear;
clc;
disp('Example 4.14');

//  aim : To estimate 
//  the dryness fraction

//  Given values
M = 1.8;//  mass of condensate, [kg]
m = .2;//  water collected, [kg]

//  solution
x = M/(M+m);//  formula for calculation of dryness fraction using seprating calorimeter

mprintf(' \n The dryness fraction of the steam entering seprating calorimeter is  =  %f \n',x);

//  End
