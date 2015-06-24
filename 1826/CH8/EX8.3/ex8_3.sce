// Example 8.3, page no-210
clear
clc
rni=63//n Ohm.m
rcr=129
k=1120
c=(k*10^-9)/(0.8*(1-0.8))
printf("The Nordheims coeeficient is %.0f *10^-6 Ohm-m",c*10^6)
