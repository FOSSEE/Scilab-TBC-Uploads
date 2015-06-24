// Example 2.12 page no-60
clear
clc

B=1    //Tesla
T=35.5*10^-6 //sec
f=1/T
printf("\n(a)\nThe frequency of the R.F voltage, f=%.2f*10^4 Hz",f/10^4)
k=2*10^6
g=40000
printf("\n\n(b)Number of passages required to gain 2*10^6 eV are ,N=%d",k/g)
v=49*g
R=(3.37*10^-6)*sqrt(v)
printf("\n\n(c)\nDiameter of last semicircle, D = 2R =%.2f *10^-4 m",2*R*10000)
