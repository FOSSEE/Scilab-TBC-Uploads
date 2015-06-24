// Example 1.13 page no-34
clear
clc 

l=1.27 //cm
D=19.4 //cm
s=0.475 //cm
Va=400 //volts
Se=l*D*10^-2/(2*s*Va)
Se=ceil(Se*10^5)
printf("\nS_E=%.2f mm/v",Se/100)

v=30   //volt
e=1.6*10^-19 //C
m=9.1*10^-31 //kg
x=sqrt(m/e)
B=(x*0.65*30*sqrt(2*Va))/(l*D)
printf("\nB=%.2f*10^-5 wb/m^2",B*10^5)//answer not matches with given answer
