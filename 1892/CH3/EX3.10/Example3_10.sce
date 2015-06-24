// Example 3.10

clear; clc; close;

format('v',6);
// Given data
Resolution=500;//steps/res
theta=72;//rotator turn angle in degree
//Calculations
Hmod_Res=Resolution*2;//half step mode resolution in steps/res
disp(Hmod_Res,"Half step mode resolution in steps/res : ");
Beta=360/Hmod_Res;//in degree
steps=theta/Beta;//in steps
disp(steps,"No. of steps required : ");
