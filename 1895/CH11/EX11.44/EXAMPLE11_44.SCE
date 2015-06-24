//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.44(PAGENO 529)");

//given
P_x1 = 1/2//probability of first symbol
P_x2 = 1/4//probability of second symbol
P_x3 = 1/8//probability of third symbol
P_x4 = 1/8//probability of fouth symbol
n1 = 1
n2 = 2
n3 = 3
n4 = 3

//calculations
I_x1 = -log2(P_x1);
I_x2 = -log2(P_x2);
I_x3 = -log2(P_x3);
I_x4 = -log2(P_x4);
H_x = P_x1*I_x1 +  P_x2*I_x2 +  P_x3*I_x3 +  P_x4*I_x4;
L = P_x1*n1 + P_x2*n2 + P_x3*n3 + P_x4*n4;
neta = H_x/L;
P_neta = neta*100//efficiency in percentage

//results
printf("\n\nEfficiency = %.2f",neta);
printf("\n\nEfficiency in percentage = %.2f percent",P_neta);
