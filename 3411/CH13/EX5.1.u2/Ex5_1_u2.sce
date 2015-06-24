//Example 5_1_u2
clc();
clear;
//To find the temprature where would be the critical field
hc=0.070       //units in K
ho=0.0803       //units in K
tc=7.22          //units in K
T=tc*sqrt(1-(hc/ho))        //units in K
printf("Temprature T=%.2f K",T)
//Given in textbook T=2.94K But the correct answer is T=2.59K
