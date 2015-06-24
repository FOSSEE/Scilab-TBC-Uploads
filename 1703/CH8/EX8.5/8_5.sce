clc
//initialisation of variables
n= 0.91 //poise
g= 32.2 //ft/sec
N= 300 //r.p.m
t= 0.01 //in
r1= 0.25 //ft
r2= 1/6 //ft
//CALCULATIONS
n1= n*30.48/(454*g)
A= N*2*%pi/60
t1= t/12
hp= %pi*A^2*n1*(r1^4-r2^4)/(t1*1100)
//RESULTS
printf ('Horse Power lost = %.2f ',hp)
