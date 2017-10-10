//ques-1.23
//Calculating hardness of given water sample
clc
V=100;//volume of water (in mL)
v1=20;//volume of sodium carbonate used (in mL)
n1=0.1;//normality of sodium carbonate solution
v2=30;//volume of sulphuric acid used (in mL)
n2=0.05;//normality of sulphuric acid used
f=v2*(n2/n1);//Filtrate
h=(v1-f)*n1*(1000/V)*50;//hardness (in ppm)
printf("Hardness of water sample is %d ppm.",h);
