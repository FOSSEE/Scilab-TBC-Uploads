//Exa 9.3
clc;
clear;
close;
//Given data : 
P=100000;//in Rs
F=20000;//in Rs
n=8;//in years
k=0.2
Dt=(P-F)/n;//in Rs.
disp("The calculations pertaining to Dt and Bt for different values of t are summarized in table below using the formulae : ");
disp("Dt=k*B(t-1)");
disp("Bt=B(t-1)-Dt");

disp("End of year          Depreciation          Book value");
disp("   (t)                  (Dt)             (Bt=B(t-1)-Dt)");
disp("    0                                       100000.00");
disp("    1                 20000.00               80000.00");
disp("    2                 16000.00               64000.00");
disp("    3                 12800.00               51200.00");
disp("    4                 10240.00               40960.00");
disp("    5                  8192.00               32768.00");
disp("    6                  6553.60               26214.40");
disp("    7                  5242.88               20971.52");
disp("    8                  4194.                 16777.22");
disp("If we are interested in computing Dt and Bt for a specific period (t), the formulae can be used. in this approach, it should be noted that the depreciation is the same for all the periods.");