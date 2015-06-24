clear;
clc;
printf("\t\t\tExample Number 1.5\n\n\n");
// radiation heat transfer
// illustration1.5
// solution

sigma = 5.699*10^(-8);//[W/square meter*k^(4)] universal constant
T1 = 273.15+800;// [k] first plate temperature
T2 = 273.15+300;// [k] second plate temperature
//equation(1-10) may be employed for this problem
Q = sigma*((T1^(4))-(T2^(4)));// [W/square meter]
printf("heat transfer per unit area is %f kW/square meter",Q/1000);
