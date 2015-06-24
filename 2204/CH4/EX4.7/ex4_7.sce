//Exa 4.7
clc;
clear;
close;
// Given data
R1= 10;// in kΩ
CF= 0.1;// in micro F
CF= CF*10^-6;// in F
RF= 10*R1;// in kΩ
RF= RF*10^3;// in Ω
fa= 1/(2*%pi*RF*CF);// in Hz
disp(fa,"Limiting frequency in Hz is : ")
