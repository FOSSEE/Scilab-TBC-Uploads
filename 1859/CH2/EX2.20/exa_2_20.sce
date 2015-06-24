// Exa 2.20
clc;
clear;
close;
// Given data
R1= 500;// in ohm
R2= 615;// in ohm
R3= 100;// in ohm
delR1ByR1= 1;
delR2ByR2= 1;
delR3ByR3= 0.5;
// Part(i)
R4=R1*R2/R3;// in ohm
disp(R4,"Unknown resistance in ohm")
delR4ByR4= delR1ByR1+delR2ByR2+delR3ByR3;
disp(delR4ByR4,"Relative limiting error of unknown resistance in percentage")
LimError= R4*delR4ByR4/100;
disp(LimError,"Limiting error in ohms");
