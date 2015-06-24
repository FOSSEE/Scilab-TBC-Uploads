// Exa 2.11
format('v',5);clc;clear;close;
// Given data
At = 8.5;//true value in A
Am = 8.3;//measured value in A
Absoluteerror = At - Am;//absolute error in A
disp(Absoluteerror,"The Absolute error in A is");
// Relative percentage error 
Per_Error = ((At-Am)/At)*100;// %e in %
disp(Per_Error,"The relative percentage error in % is");
