//Example 6.4, page 220
clc
m=9*10^-31//in kg
h=10^-34//in j-s
V=10//in ev
a=1.8*10^-10//in m
//convert v to joule
Vo=V*1.6*10^-19//in Joule
N=(2*m*Vo*a^2)/(h^2)
printf("\n Numbers given is  %d   ",N)