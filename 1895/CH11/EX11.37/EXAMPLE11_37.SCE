//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.37(PAGENO 524)");
//given
Px_1 = 0.9//probability of first symbol
Px_2 = 0.1//probability of second symbol
n1 = 1//length of the code for x_1
n2 =1//length of code for x_2

//calculations
//we know that the average code length L per symbol
L = Px_1*n1 + Px_2*n2//code length
H_X = -Px_1*log2(Px_1) - Px_2*log2(Px_2) //entropy
neta = H_X/L//efficiency 
neta1 = neta*100//neta in percentage
gama = 1 - neta//redundancy
gama1 = gama*100//gama in percentage

//results
printf("\n\ni.Efficiency of code = %.2f percent",neta1);
printf("\n\nii.Code redundancy = %.2f percent ",gama1)
