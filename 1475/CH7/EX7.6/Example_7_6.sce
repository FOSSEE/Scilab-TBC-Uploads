// Example 7.6 Calculate price index numbers from the following data,
clc;
clear;
BP=[80 10 40 50 12];
CP= [110 15 56 95 18];
W=[14 20 35 15 16];
PR= (CP./BP)*100;
WAI=((sum(CP.*W)/sum(BP.*W))*100);
WAM=(sum(PR.*W)/sum(W));
disp(WAM,"Weighted Arithmetic Mean",WAI,"Weighted Aggregrative Index",PR, "Price Relative =");
