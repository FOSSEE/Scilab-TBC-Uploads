clc
clear 
printf("example 3.10 page number 98\n\n")

//to find the amount of water evaporated
xf = 0.15;
xl = (114.7)/(114.7+1000);
xc = 1;

K2Cr2O7_feed = 1000*0.15;   //in kg

n = 0.8;
C = n*K2Cr2O7_feed;
V = (K2Cr2O7_feed-120 - 880*0.103)/(-0.103);

printf("amount of water evaporated = %f kg",V)
