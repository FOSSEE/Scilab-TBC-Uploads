// Example 7.10  Calculate the price index for the year 1978 with 
clc;
clear;
Po=[12.5 10.5 15.00 9.40];
Pn=[14 12 14 11.2];
PoQo=[112.5 126.0 105 47];
Qo=PoQo./Po
LI=(sum(Pn.*Qo)/sum(Po.*Qo)*100);
disp(LI,"Laspeyres index = ");
