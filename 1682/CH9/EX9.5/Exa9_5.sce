//Exa 9.5
clc;
clear;
close;
//Given data : 
P=100000;//in Rs
F=20000;//in Rs
n=8;//in years
Sum=n*(n+1)/2;//sum of the years
disp("The rates for years 1-8, are respectively 8/36,7/36,6/36,5/36,4/36,3/36,2/36,1/36");
disp("The calculations of Dt and Bt for different values of t are summarized in table below using the formulae : ");
disp("Dt=Rate*(P-F)");
disp("Bt=B(t-1)-Dt");
disp("End of year          Depreciation          Book value");
disp("   (t)                  (Dt)             (Bt=B(t-1)-Dt)");
disp("    0                                      100000.00");
disp("    1                 17777.77              82222.23");
disp("    2                 15555.55              66666.68");
disp("    3                 13333.33              53333.35");
disp("    4                 11111.11              42222.24");
disp("    5                  8888.88              33333.36");
disp("    6                  6666.66              26666.70");
disp("    7                  4444.44              22222.26");
disp("    8                  2222.22              20000.04");
disp("If we are interested in computing Dt and Bt for a specific period (t), then the usage of the  formulae would be better.");