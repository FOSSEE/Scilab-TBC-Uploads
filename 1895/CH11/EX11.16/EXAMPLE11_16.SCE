//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.16(PAGENO 498)");
//given
Px_1 = 1/2;//probability of first symbol
Px_2 = 1/4;//probability of second symbol
Px_3 = 1/8;//probability of third symbol
Px_4 = 1/16;//probability of fourth symbol
Px_4 = 1/16;//probability of fifth symbol
T_b = 1*10^-3//time required for emittion of each symbol
r = 1/(T_b)//symbol rate

//calculations
H_X = Px_1*log2(1/Px_1) + Px_2*log2(1/Px_2) + Px_3*log2(1/Px_3) + Px_4*log2(1/Px_4) + Px_4*log2(1/Px_4);
R = r*H_X;//information rate

//results
printf("\n\ni.Entropy of five symbols = %.2f bits/symbol",H_X);

printf("\n\nii.Rate of information = %.2f bits/sec",R);
