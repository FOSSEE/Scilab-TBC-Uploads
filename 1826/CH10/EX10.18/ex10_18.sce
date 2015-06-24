// Example 10.18, page no-279
clear
clc

sig=5.9*10^7//per Ohm-m
e=1.6*10^-19//C
mu=3.2*10^-3//m^2/V-s
d=8900//density
avg=6.022*10^23
ni=sig/(e*mu)
awt=63.5
n=avg*d*1000/awt
k=ni/n
printf("Concentration of free electron in pure Cu is %.2f*10^28\nThe average number of electrons contributed per Cu atom is %.2f i.e. %.0f",n*10^-28,k,k)
