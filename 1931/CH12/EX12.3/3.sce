clc
clear
//INPUT DATA
M1=199.5//Isotopic mass of metal
T1=4.185//Critical temperature for a metal with isotopic mass in k
T2=4.133//fall of critical temperature for a metal with isotopic mass in k
a=0.50//coefficient of mass

//CALCULATION
M2=(((M1)^a)*(T1/T2))^2//The Isotopic mass if the critical temperature falls to 4.133

//OUTPUT
printf('The Isotopic mass if the critical temperature falls to %3.3fK is %3.2f',T2,M2)
