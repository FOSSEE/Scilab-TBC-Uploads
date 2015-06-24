// Sp_Example 3.2

clear; clc; close;

format('v',7);
// Given data
Ns=10;//poles
q=5;//no. of phase
Nr=4;//poles
w=600;//speed in rpm

//Calculations
Beta=360/q/Nr;//in degree
disp(Beta,"Step Angle in degree : ");
fc=Nr*w/60;//in Hz
disp(fc,"Commutation frequency at each phase in Hz : ");
//Note : Answer is wrong in the book.
