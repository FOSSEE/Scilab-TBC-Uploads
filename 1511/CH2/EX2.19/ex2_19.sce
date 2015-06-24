// Example 2.19 page no-73
clear
clc
sig=1/60 // v/cm
mup=1800 //cm^2/V-sec
mun=3800 //cm^2/V-sec
e=1.6*10^-19 //C

ni=sig/(e*(mun+mup))
na=7*10^13 //cm^3
nd=10^14  // /cm^3
k=na-nd //p-n
p=0.88*10^13
n=3.88*10^13
eps=2
J=(n*mun+p*mup)*(e*eps)
printf("J=%.1f mA/cm^3",J*1000)
