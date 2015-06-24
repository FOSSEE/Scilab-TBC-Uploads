//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.54(PAGENO 537)");

//given
P_x1 = 1/3//probability of first signal
P_x2 = 1/6//probability of second signal
P_x3 = 1/4//probability of third signal
P_x4 = 1/4//probability of fourth signal

//calculations
I_x1 = -log2(P_x1);
I_x2 = -log2(P_x2);
I_x3 = -log2(P_x3);
I_x4 = -log2(P_x4);
H_x = P_x1*I_x1 +  P_x2*I_x2 +  P_x3*I_x3 +  P_x4*I_x4 //entropy

//results
printf("\n\nEntropy of the source = %.5f bits/symbol ",H_x)
