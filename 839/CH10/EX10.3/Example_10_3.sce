//clear//
clear;
clc;

//Example 10.3
//Given
r1 = 60/2; //[mm]
r2 = (50+r1); //[mm]
k2 = 0.055; //[W/m-C]
r3 = 40+r2; //[mm] 
k3 = 0.05; //[W/m-C]
To = 30;  //[C]
Ti = 150; //[C]
//Logrithimic mean for silica layer and cork layer
rl_s = (r2-r1)/log(r2/r1) //[mm]
rl_c = (r3-r2)/log(r3/r2) //[mm]

//Using Eq.(10.15) and Eq.(10.14) simulataneously
//And Adding these two Equations
qbyL = (Ti-To)/4.13 //[W/m]
