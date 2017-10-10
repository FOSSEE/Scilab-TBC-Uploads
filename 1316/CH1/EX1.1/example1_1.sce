//Chapter 1
//Example 1.1
//Page 3

clear;
clc;

K=0.222;
Qout=2;


//Calculation of value of h at which level stabilizes

printf("The level will stabilize from self regulation when Qout=Qin.Thus the value of h is %.0f ft",((Qout/K)^2)/27);
