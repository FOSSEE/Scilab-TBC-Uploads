//Chapter 5: Chemical Kinetics and Catalysis
//Problem: 12
clc;

// Solution
mprintf("Let the initial concentration be 100, when x = 25,t = 30 minutes\n")
a = 100
x = 25.0
t = 30
K = 2.303 / t * log10(a / (a - x))
t05 = 0.683 / K
t = 2.303 / K * log10(a / x)
mprintf(" K = %.2e / min\n",K)
mprintf(" T0.5 = %.2f min\n",t05)
mprintf(" t = %.1f min",t)
