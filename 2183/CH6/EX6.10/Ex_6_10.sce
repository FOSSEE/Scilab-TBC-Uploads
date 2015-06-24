// Example 6.10 //power coupled
clc;
clear;
close;
tha=15;//in degree
po=1;//in micro watt
nc=(sind(tha))^2;//
pf=nc*po*10^-6;//in watts
disp(pf*10^9,"power coupled in nW is")
