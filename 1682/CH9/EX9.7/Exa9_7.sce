//Exa 9.7
clc;
clear;
close;
//Given data : 
P=100000;//in Rs
F=20000;//in Rs
n=8;//in years
i=12;//in % per annum
A=(P-F)*(i/100)/(((1+i/100)^n)-1);//in Rs.
disp("In this method of depreciation, a fixed amount of Rs. "+string(A)+" will be depreciated at the end of every year from the earning of the asset. The deprecited amount will earn intrest for the remaining period of life of the asset at an intrest rate of 12 %, compounded anually.");
disp(A,"Depreciation at the end of year 1(D1) in Rs. : ");
disp(A+A*i/100,"Depreciation at the end of year 2(D2) in Rs. : ");
disp(A+(A+(A+A*i/100))*i/100,"Depreciation at the end of year 3(D3) in Rs. : ");
disp("The calculations along with boook values are summarized in table below : ");
disp("End of year          Fixed Depreciation          Net Depreciation        Book value");
disp("   (t)                    (Rs.)                      Dt(Rs.)              Bt(Rs.)");
disp("    0                     6504                                          100000.00");
disp("    1                     6504                      6504.00              82222.23");
disp("    2                     6504                      7284.48              66666.68");
disp("    3                     6504                      8158.62              53333.35");
disp("    4                     6504                      9137.65              42222.24");
disp("    5                     6504                     10324.17              33333.36");
disp("    6                     6504                     11462.27              26666.70");
disp("    7                     6504                     12837.74              22222.26");
disp("    8                     6504                     14378.27              20000.04");