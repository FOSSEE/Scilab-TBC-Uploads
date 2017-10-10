//Chapter 14: Water Treatment
//Problem: 9
clc;

//Given Constants For Specific Elements
Fe = 56
S = 32
O = 16

//Solution
hardness = Fe + S + O * 4
hardn= (hardness * 215 )/100

mprintf("215 ppm of hardness is : %.1f ppm of FeSO4",hardn)
