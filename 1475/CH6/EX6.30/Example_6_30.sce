// Example 6.30 Deseasonalise the following sales data
clc;
clear;
Sales=[23.7 25.2 21.4 65.4];
SI=[0.78 1.24 0.50 1.48];
DD=Sales./SI;
disp(DD,"Deseasonalise Data =",SI,"Seasonal Index",Sales,"Sales in thousand =");
