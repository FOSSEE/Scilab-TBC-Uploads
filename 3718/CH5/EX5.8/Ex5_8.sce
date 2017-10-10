//Chapter 5: Chemical Kinetics and Catalysis
//Problem: 8
clc;

//Declaration of Variables
T = 500        //in C
Pi = 350       //in torr
r1 = 1.07      //in torr / s
r2 = 0.76      //in torr / s

// Solution
mprintf("1.07 = k(0.95a)^n\n")
mprintf(" 0.76 = k(0.80a)^n\n")
n = log(r1 / r2) / log(0.95 / 0.80)
n=ceil(n)
mprintf(" Hence, order of reaction is %d",n)
