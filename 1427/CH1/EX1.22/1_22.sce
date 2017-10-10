//ques-1.22
//Finding hardness of given water sample
clc
V=10000;//volume of water teated (in L)
v1=200;//volume of HCl required by cationic resin (in L)
v2=200;//volume of NaOH required by anionic resin (in L)
N=0.1;//normality of HCl and NaOH
h=v1*N*(1000/V)*50;//hardness (in ppm)
printf("Hardness of given sample is %d ppm.",h);
