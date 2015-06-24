//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.17(PAGENO 498)");
//given
Px_1 = 1/2;//probability of first symbol
Px_2 = 1/4;//probability of second symbol
Px_3 = 1/8;//probability of third symbol
Px_4 = 1/16;//probability of fourth symbol
Px_5 = 1/16;//probability of fifth symbol
r = 16//outcomes per second

//calculations
H_X = Px_1*log2(1/Px_1) + Px_2*log2(1/Px_2) + Px_3*log2(1/Px_3) + Px_4*log2(1/Px_4) + Px_5*log2(1/Px_5);
R = r*H_X;//information rate

//result
printf("\n\nRate of information = %.2f bits/sec",R);
