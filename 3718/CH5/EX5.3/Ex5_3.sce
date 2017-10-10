//Chapter 5: Chemical Kinetics and Catalysis
//Problem: 3
clc;

//Declaration of Variables
t0 = 37.0                   //in cm cube of KMnO4
t5 = 29.8                   //in cm cube of KMnO4
t15 = 19.6                  //in cm cube of KMnO4
t25 = 12.3                  //in cm cube of KMnO4
t45 = 5.00                  //in cm cube of KMnO4

// Solution
K5 = 2.303 / 5 * log10(t0 / t5)
K15 = 2.303 / 15 * log10(t0 / t15)
K25 = 2.303 / 25 * log10(t0 / t25)
K45 = 2.303 / 45 * log10(t0 / t45)

mprintf("At t = 5 min, K = %.3e /min\n",K5)
mprintf(" At t = 15 min, K = %.3e /min\n",K15)
mprintf(" At t = 25 min, K = %.3e /min\n",K25)
mprintf(" At t = 45 min, K = %.3e /min\n",K45)
mprintf(" As the different values of K are nearly same, the reaction is of first-order\n")
K = (K45 + K25 + K5 + K15) / 4
mprintf(" The average value of K = %.3e /min",K)
