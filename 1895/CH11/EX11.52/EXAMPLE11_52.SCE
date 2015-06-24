//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.52(PAGENO 536)");

//given
P_x1 = .7//probability of first signal
P_x2 = .15//probability of second signal
P_x3 = .15//probability of third signal
n = 2//second order extention

//calculations
I_x1 = -log2(P_x1);
I_x2 = -log2(P_x2);
I_x3 = -log2(P_x3);
H_x = P_x1*I_x1 +  P_x2*I_x2 +  P_x3*I_x3//entropy
H_x2 = n*H_x//entropy of second order extention

//results
printf("\n\nEntropy of second order extention = %.3f bits/symbol",H_x2);
