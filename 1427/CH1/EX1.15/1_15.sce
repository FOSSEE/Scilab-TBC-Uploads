//ques-1.15
//Calculating hardness of water sample
clc
V=100;//volume of water (in mL)
v1=25;//volume of Sodium carbonate added (in mL)
v2=10;//volume of Sulphuric acid required (in mL)
N=1/50;//normality of Sodium carbonate and Sulphuric acid
h=(v1-v2)*N*(1000/V)*50;//hardness
printf("The hardness is permanent with value %d ppm.",h);
