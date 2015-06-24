clc
clear
printf("Example 8.16 | Page number 234 \n\n");
//What are available and unavailable energies of Q1
//Given data
T1 = 500 //K
T0 = 300 //K
T2 = 350 //K
W = 250 //kJ
Q1 = 1000 //kJ
printf("Available energy = %.1f kJ\n",(1-(T0/T1))*Q1);
printf("Unavailable energy = %.1f kJ\n",Q1 - (1-(T0/T1))*Q1);
