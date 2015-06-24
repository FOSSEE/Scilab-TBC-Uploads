//clear//
clear;
clc;

//Example 24.2
//Given
X1 = 0.25;
X = 0.05;
Dvprime = 8.3*10^-6; //[cm^2/s]
D = 25.4; //[mm]

//Solution
s = D/(2*10); //[cm]
tT = 4*s^2/(%pi^2*Dvprime)*log(8*X1/(%pi^2*X))/3600; //[h] 
disp('h',tT,'drying time is')
