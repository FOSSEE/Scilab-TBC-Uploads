//Example 1_19
clc();
clear;
//To find the diameter of 20th ring
D4=0.4                       //units in cm
D12=0.7                     //units in cm
D20=sqrt(2*(D12^2-D4^2)+D4^2)
printf("The diameter of the 20th dark ring is %.4f cm",D20)
