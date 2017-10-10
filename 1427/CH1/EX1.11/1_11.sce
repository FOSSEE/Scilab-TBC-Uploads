//ques-1.11
//Calculating hardness of given water sample
clc
V=100;//volume of water sample (in mL)
v=12.5;//volume of Magnesium sulphate (in mL)
N=0.08;//normality of Magnesium sulphate
h=(v*N)*50;//hardness in 100mL
h=h*(1000/V);//hardness in 1L
printf("Hardness of given water sample is %d ppm.",h);
