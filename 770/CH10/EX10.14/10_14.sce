clear;
clc;

//Example - 10.14
//Page number - 353
printf("Example - 10.14 and Page number - 353\n\n");

//(1)
//This part involves proving a relation in which no mathematical components are involved.
//For prove refer to this example 10.14 on page number 354 of the book.
printf(" (1).This part involves proving a relation in which no mathematical components are involved.\n");
printf("     For prove refer to this example 10.14 on page number 354 of the book.\n\n")

//(2)
//Given
Vol_1 = 0.1;//[m^(3)] - Initial volume of each compartment
n_1 = 400;//[mol] - Initial number of moles in compartment 1
V_1 = Vol_1/n_1;//[m^(3)/mol] - Molar volume at state 1
T_1 = 294;//[K]
Vol_2 = 0.2;//[m^(3)] - Final volume of the compartment after removing the partition.
n_2 = n_1;//[mol] - Number of moles remains the same
V_2 = Vol_2/n_2;//[m^(3)/mol] - Molar volume at state 2

// For argon
a = 0.1362;//[Pa-m^(6)/mol^(2)]
b = 3.215*10^(-5);//[m^(3)/mol]
Cv_0 = 12.56;//[J/mol-K] - Heat capacity in ideal gas state

// For overall system q = 0, and no work is done, therefore delta_U = 0
// Therfore from the relation proved in part (1), we have
T_2 = T_1 + (a/Cv_0)*(1/V_2 - 1/V_1);//[K]

printf(" (2).The final temperatutre is %f K\n",T_2)

