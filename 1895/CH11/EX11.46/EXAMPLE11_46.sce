//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.46(PAGENO 532)");

//given
P_x1 = .4//probability of first signal
P_x2 = .19//probability of second signal
P_x3 = .16//probability of third signal
P_x4 = .15//probability of fourth signal
P_x5 = .1//probability of fifth signal
n1 = 1//number of bits in code obtained from table givenn textbook
n2 = 2//number of bits in code obtained from table givenn textbook
n3 = 2//number of bits in code obtained from table givenn textbook
n4 = 3//number of bits in code obtained from table givenn textbook
n5 = 3//number of bits in code obtained from table givenn textbook

//calculations
I_x1 = -log2(P_x1);
I_x2 = -log2(P_x2);
I_x3 = -log2(P_x3);
I_x4 = -log2(P_x4);
I_x5 = -log2(P_x5);
H_x = P_x1*I_x1 +  P_x2*I_x2 +  P_x3*I_x3 +  P_x4*I_x4 +  P_x5*I_x5;//entropy
L1 = P_x1*n1 + P_x2*n2 + P_x3*n3 + P_x4*n4 + P_x5*n5;
neta1 = H_x/L1;
P_neta1 = neta1*100//efficiency in percentage using Shannon Fano code
L2 = P_x1*1 + (P_x2 + P_x3 +P_x4 +P_x5 )*3
neta2 = H_x/L2;
P_neta2 = neta2*100//efficiency in percentage using huffman code

//results
printf("\n\nEfficiency in percentage using Shannon Fano code = %2f percent",P_neta1)
printf("\n\nEfficiency in percentage using huffman code   = %2f percent",P_neta2)
printf("\n\nNote: There is mistake in the textbook in calculation of L using SHannon Fano code")
