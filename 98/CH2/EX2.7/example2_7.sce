//Chapter 2
//Example 2_7
//Page 23

clear;clc;

w=94;
h=39;
n_plant=0.8;

work=w*h*9.81;
printf("Work done/sec = %.1f kW \n\n", work);

printf("This is gross plant capacity\n");

fc=n_plant*work;
printf("(i)\t Firm capacity = %.1f kW \n\n", fc);

printf("(ii)\t Yearly gross output = %.1f kW \n\n", fc*8760);


