// Example 4.6, page no-211
clear
clc

c0=25
x0=0.5
x1=0.05
c1=c0*x0/(x0-x1)
c2=c0*x0/(x0+x1)
printf("C1=%.2f pF\nC2=%.2f pF",c1,c2)
