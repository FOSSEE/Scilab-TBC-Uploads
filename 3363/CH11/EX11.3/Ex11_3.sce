//Example 11.3, page 410
clc
h=6.6*10^-34//in J-s
v=1*10^7//per sec
K=1.4*10^-23//in J-K
T=300//in K
n=exp(-((h*v)/(K*T)))
printf("\n The Boltzan factor is  %e  Tesla",1-n)