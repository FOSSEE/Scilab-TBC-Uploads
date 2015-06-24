//Exa 3.7
clc;
clear;
close;
// given data
RF=1;//in Mohm
AV=-30;//unitless
disp("we have AV=-RF/R1=Vo/V1");
R1=-RF*10^6/AV;//in ohm
//for an inverting amplifier RiF=R1
RiF=R1;//in ohm
disp(R1/1000,"Value of R1 in Kohm is : ")
disp(RiF/1000,"Value of RiF in Kohm is : ")