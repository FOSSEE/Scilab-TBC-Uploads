//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.38(PAGENO 524)");

//given
Px_1 = 0.81//probability of first symbol
Px_2 = .09//probability of second symbol
Px_3 = .09//probability of third symbol
Px_4 = 0.01//probability of forth symbol
n1 = 1//length of code for a_1
n2 =2//length of code for a_2
n3 = 3//length of code for a_3
n4 = 3//length of code for a_4

//calculations
//we know that the average code length L per symbol
L = Px_1*n1 + Px_2*n2 + Px_3*n3 + Px_4*n4 //code length
H_X = -Px_1*log2(Px_1) - Px_2*log2(Px_2) - Px_3*log2(Px_3) - Px_4*log2(Px_4)//entropy 
neta = H_X/L//efficiency 
neta1 = neta*100//neta in percentage
gama = 1 - neta//redundancy
gama1 = gama*100//gama in percentage

//results
printf("\n\ni.Efficiency of code = %.2f percent",neta1);
printf("\n\nii.Code redundancy = %.2f percent ",gama1)
