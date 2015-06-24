clear;
clc;
printf("\t\t\tExample Number 8.2\n\n\n");
// heat transfer between black surfaces
// Example 8.2 (page no.-389-390) 
// solution

L = 1;// [m] length of black plate
W = 0.5;// [m] width of black plate
T1 = 1000+273;// [K] first plate temperature
T2 = 500+273;// [K] second plate temperature
sigma = 5.669*10^(-8);// [W/square meter K^(4)]
// the ratios for use with figure 8-12(page no.-386) are
Y_by_D = W/W;
X_by_D = L/W;
// so that 
F12 = 0.285;// radiation shape factor 
// the heat transfer is calculated from
q = sigma*L*W*F12*(T1^(4)-T2^(4));
printf("net radiant heat exchange between the two plates is %f kW",q/1000);








