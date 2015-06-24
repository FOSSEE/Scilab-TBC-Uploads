clc
clear
//input
p=900 //power
d=4*10^-3 //diameter
l=0.87//length
sig=5.7*10^-8 //stephans constant
//calculation
t=(p/(%pi*d*l*sig))^0.25//temperature
//output
printf("the working temperature is %d K",t)
