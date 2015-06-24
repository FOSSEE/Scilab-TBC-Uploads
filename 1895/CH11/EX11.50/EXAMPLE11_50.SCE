//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.50(PAGENO 535)");

//given
P_x1 = 1/2//probability of first signal
P_x2 = 1/4//probability of second signal
P_x3 = 1/8//probability of third signal
P_x4 = 1/16//probability of fourth signal
P_x5 = 1/32//probability of fifth signal
P_x6 = 1/32//probability of sixth signal
r = 16//message rate in outcomes per second

//calculations
I_x1 = -log2(P_x1);
I_x2 = -log2(P_x2);
I_x3 = -log2(P_x3);
I_x4 = -log2(P_x4);
I_x5 = -log2(P_x5);
I_x6 = -log2(P_x6);
H_X = P_x1*I_x1 +  P_x2*I_x2 +  P_x3*I_x3 +  P_x4*I_x4 +  P_x5*I_x5 + P_x6*I_x6 //entropy
R = H_X*r//Information rate

//results
printf("\n\nEntropy of the system =%.2f bits/message",H_X);
printf("\n\nInformation rate = %.2f bits/seconds",R);
