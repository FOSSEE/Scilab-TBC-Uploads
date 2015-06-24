//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.18(PAGENO 499)");
//given
Px_1 = 1/4;//probability of first symbol
Px_2 = 1/5;//probability of second symbol
Px_3 = 1/5;//probability of third symbol
Px_4 = 1/10;//probability of fourth symbol
Px_5 = 1/10;//probability of fifth symbol
Px_6 = 1/20;//probability of sixth symbol
Px_7 = 1/20;//probability of seventh symbol
Px_8 = 1/20;//probability of eigith symbol
f_m = 10*10^3//freuency of tranamitting symbol

//calculations
H_X = Px_1*log2(1/Px_1) + Px_2*log2(1/Px_2) + Px_3*log2(1/Px_3) + Px_4*log2(1/Px_4) + Px_5*log2(1/Px_5) + Px_6*log2(1/Px_6)+ Px_7*log2(1/Px_7)+ Px_8*log2(1/Px_8);//entropy
f_s = 2*f_m//sampling frequency
r = f_s//sampling frequency equal to rate of transmission
R = r*H_X;//information rate

//result
printf("\n\nRate of information = %.2f bits/sec",R);
printf("\n\nNote:Their mistake in calculation of H_X in textbook")
