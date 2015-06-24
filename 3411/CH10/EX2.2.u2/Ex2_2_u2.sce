//Example 2_2_u2
clc();
clear;
//To corresponding mean free path and compare with experimental value
row=6.87*10^7
m=9.11*10^-31
n=5.86*10^28
e=1.6*10^-19
t=(row*m)/(n*e^2)         //units in s
printf("The mean free path is t=")
disp(t)
printf("sec")
kb=1.381*10^-23
T=300
m=9.11*10^-31
v=(sqrt(3*kb*T))/sqrt(m)         //units in m/s
printf("\nVelocity v=%.2f m/s\n",v)
lamda=t*v //units in mts
printf("Wavelength is lamda=")
disp(lamda)
printf("mts")
printf("\nThe experimental value is ten times higher than predicted value")
//In textbook the answer is printed wrong as t=2.84*10^-14S and lamda=3.28*10^-9mts but correct answer is t=4.172D-14sec and lamda=4.873D-09 mts
