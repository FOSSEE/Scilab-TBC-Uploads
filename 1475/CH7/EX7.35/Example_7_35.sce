//Example 7.35 In calculating a certain cost of living index number the following weights were used
clc;
clear;
I=[32 54 47 78 58];
W=[15 3 4 2 1];
Avg=sum(I.*W)/sum(W);
disp(100+Avg,"Cost of living index",Avg,"Average percentage increase for all groups taken together",I,"Average % Increase in Price");
