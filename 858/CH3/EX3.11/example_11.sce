clc
clear 
printf("example 3.10 page number 98\n\n")

//to find the yield of crystals

xc = 106/286;
xf = 0.25;
xl = 27.5/127.5;

water_present = 100*(1-xf);    //in kg
V = 0.15*75;   //in kg
C = (100*xf - 88.7*xl)/(xc-xl);
Na2CO3_feed = 25/xc;

yield = (C/Na2CO3_feed)*100;

printf("yield = %f ",yield)
