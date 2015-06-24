clear;
clc;
printf("\t\t\tExample Number 1.6\n\n\n");
// total heat loss by convection and radiation
// illustration1.6
// solution

d = 0.05;//[m] diameter of pipe
Twall = 50;//[degree celsius] 
Tair = 20;//[degree celsius]
emi = 0.8;//emissivity
h = 6.5;//[W/square meter] heat transfer coefficient for free convection
Q1 = h*22*d*(Twall-Tair)/7;//[W/m] convection loss per unit length
sigma = 5.669*10^(-8);// [W/square meter*k^(4)] universal constant
T1 = 273.15+Twall;// [k]
T2 = 273.15+Tair;// [k]
Q2 = emi*22*d*sigma*((T1^(4))-(T2^(4)))/7;// [W/m] heat loss due to radiation per unit length
Qtotal = Q1+Q2;// [W/m] total heat loss per unit length
printf("total heat loss is therefore %f W/m",Qtotal);
