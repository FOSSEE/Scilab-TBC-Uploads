// Example 4.8, page no-212
clear
clc
T=0.5
sg1=1.02
sg2=0.98
wt=1000*10^-6
v=T/((sg1-sg2)*wt)
v=ceil(v)
printf("V=%d cm^3",v)
