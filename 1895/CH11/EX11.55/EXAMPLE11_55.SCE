//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.55(PAGENO 538)");

//given
P_x1 = 1/2//probability of first signal
P_x2 = 1/4//probability of second signal
P_x3 = 1/8//probability of third signal
P_x4 = 1/16//probability of fourth signal
P_x5 = 1/16//probability of fifth signal
n1 = 1//number of bits in code obtained from table given textbook
n2 = 2//number of bits in code obtained from table given textbook
n3 = 3//number of bits in code obtained from table given textbook
n4 = 4//number of bits in code obtained from table given textbook
n5 = 4//number of bits in code obtained from table given textbook

//calculations
L = P_x1*n1 + P_x2*n2 + P_x3*n3 + P_x4*n4 + P_x5*n5;//Average number of bits per message

//results
printf("\n\nAverage number of bits per message = %.2f bits",L);
