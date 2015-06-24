//Exa 9.1
clc;
clear;
close;
//Given data : 
P=100000;//in Rs
F=20000;//in Rs
n=8;//in years
Dt=(P-F)/n;//in Rs.
disp("In this method of depreciation, the value of Dt is same for all the years. The calculations pertaining to Bt for different values of t are summarized in table below : ");
disp("End of year          Depreciation          Book value");
disp("   (t)                  (Dt)             (Bt=B(t-1)-Dt)");
disp("    0                                       100000");
disp("    1                  10000                 90000");
disp("    2                  10000                 80000");
disp("    3                  10000                 70000");
disp("    4                  10000                 60000");
disp("    5                  10000                 50000");
disp("    6                  10000                 40000");
disp("    7                  10000                 30000");
disp("    8                  10000                 20000");
disp("If we are interested in computing Dt and Bt for a specific period (t), the formulae can be used. in this approach, it should be noted that the depreciation is the same for all the periods.");