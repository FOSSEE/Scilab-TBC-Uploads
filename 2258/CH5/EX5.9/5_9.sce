clc();
clear;
// To calculate the isotopic mass
M1=199.5;      //isotopic mass in in a.m.u
T1=5;         //1st critical temp in K
T2=5.1;       //2nd critical temp in K
M2=((T1/T2)^2)*M1;
printf("the isotopic mass of M2 is %f a.m.u",M2);
