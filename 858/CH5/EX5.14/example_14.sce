clc
clear 
printf("example 5.14 page number 193\n\n")

//to find the solar constant
R=7*10^10;   //in cm
l=1.5*10^13;  //in cm
sigma=5.3*10^-5;   //in erd/s(cm2)(K)4
T=6000;    //in K

S=(R/l)^2*(sigma)*(T^4)*60;
printf("solar constant = %f J/sq cm min",S/10^7)
