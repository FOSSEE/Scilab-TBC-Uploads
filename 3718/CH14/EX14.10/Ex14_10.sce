//Chapter 14: Water Treatment
//Problem: 10
clc;

//Initialisation of Variables
v1 = 50.   //in ml for hardwater
v2 = 15    //in ml for EDTA
m = 0.01   //in M for EDTA

//Solution
M = v2 * m / v1
N = M * 2
S = N * 50 * 1000

mprintf("Molarity of hardness is :%.3f M\n", M)
mprintf(" Normality of hardness is :%.3f N\n", N)
mprintf(" Strength of hardness is :%d ppm", S)
