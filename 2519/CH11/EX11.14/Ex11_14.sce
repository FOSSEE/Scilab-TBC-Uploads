clc
clear
//Initialization of variables
ps=0.5069 //psia
p=20 //psia
m1=0.01
m2=1
M1=18
M2=29
//calculations
xw= (m1/M1)/(m1/M1+m2/M2)
pw=xw*p
//results
printf("partial pressure of water vapor = %.3f psia",pw)
