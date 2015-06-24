//Example 5.1: E.C.E
clc;
clear;
close;
//given data :
t=200; // time in sec
M=111.83; // silver in mg
I=0.5; // current in A
Z=(M/(I*t*1000))*1000;// electro-chemical-equivalent
disp(Z,"E.C.E,Z(mg/C) = ")
