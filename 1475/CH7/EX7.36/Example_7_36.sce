
//Example 7.36 The data below show the percentage increases in price of a few selected food items and the weights
clc;
clear;
W=[33 11 8 5 5 3 7 9 9 10];
I=[180 202 115 212 175 517 260 426 332 279];
IW=I.*W;
disp(100+ sum(IW)/sum(W),"Average Percentage increase in food price");
Index=[340 310 220 150 300];
Weight=[60 5 8 9 18];
disp(sum(Index.*Weight)/sum(Weight),"Cost of living index");

