clc
clear
//INPUT DATA
me=50//The electron mobility of pure semi conductor in m^2 V^-1 s^-1
t1=4.2//temp of pure semi conductor in k
t2=300//temp in k

//CALCULATION
m=me*((t2^(-3/2))/(t1^(-3/2)))//mobility of pure semi conductor in m^2 V^-1 s^-1

//OUTPUT
printf('mobility of pure semi conductor is %3.6f m^2 V^-1 s^-1',m)
