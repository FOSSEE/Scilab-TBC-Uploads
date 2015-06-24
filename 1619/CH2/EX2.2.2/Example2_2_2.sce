//Example 2.2.2 page 2.5

clc;
clear;

z=30;   //Length of the fibre in kms
alpha= 0.8;  //in dB
P0= 200;    //Power launched in uW
pz= P0/10^(alpha*z/10);     
printf("The output power is:%.4f uW",pz);
