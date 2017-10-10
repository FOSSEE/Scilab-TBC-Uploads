//ques-1.14
//Calculating Hardness of water sample
clc
V=100;//volume of water sample (in mL)
v=12;//volume of HCl neutralized
N=0.12;//normality of HCl
h=(v*N)*(1000/V)*50;//hardness
printf("The hardness is temporary with value %.0f ppm.",h);
