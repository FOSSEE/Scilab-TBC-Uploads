clear
clc
//to find number of independent ways
//to find number of microstates

//Given:
//number of molecules
N = 200//in molecules
//half number of molecules
N1 = 100//in molecules
//for 150 molecules in one box and 50 molecules in one box
n1 = 150
n2 = 50

//Solution:
//number of independent ways
w = factorial(N)/((factorial(N1))*(factorial(N1)))
//number of microstates
W = factorial(N)/((factorial(n1))*(factorial(n2)))
//answer is Nan.Because function factorial in scilab overflows as soon as N > 170 as here numerator is  N = 200 and answer of denominator is infinity

printf ("\n\n Number of independent ways w = \n\n %.2e" ,w);
printf ("\n\n Number of microstates W = \n\n %.2e" ,W);
