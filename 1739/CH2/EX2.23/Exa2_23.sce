//Exa 2.23
clc;
clear;
close;
//Given data :
format('v',5);
alfa=1.9;
//characteristic index profile
//Formula : v=2.405*sqrt[(alfa+2)/alfa]
v=2.405*sqrt((alfa+2)/alfa);//unitless
disp(v,"Value of v : ");
//Note : Answer in the book is not accurate.