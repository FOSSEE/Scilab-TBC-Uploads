//Chapter 9, Problem 4
clc;
B=40*10^-6;                     //flux density
l=36;                           //legnth of conductor
v=(400*1000)/(60*60);           //velocity of conductor
E=B*l*v;                        //calculating emf
printf("E.M.F = %f V",E);
