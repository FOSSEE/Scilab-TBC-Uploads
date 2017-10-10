//ques-1.18
//Calculating Hardness of a sample of water
clc
V=50000;//volume of water sample (in L)
v=200;//volume of NaCl used (in L)
s=125;//strength of NaCl used (in g/L)
h=v*s*(50/58.5)*(1000/V);//hardness (in ppm)
printf("Hardness of given sample is %.1f ppm.",h);
