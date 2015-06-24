//Section-5,Example-3,Page no.-D.19
//To find the rate constant at 600 degree celcius.
clc;
E_a=50000
R=8.314
T_2=873
T_1=773
k_1=5*10^3
k_2=k_1*10^((E_a/(2.303*R))*((1/T_1)-(1/T_2)))
disp(k_2,'Rate constant at 600 degree celcius(sec^-1)')



