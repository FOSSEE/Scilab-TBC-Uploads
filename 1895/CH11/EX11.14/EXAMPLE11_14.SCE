//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.14(PAGENO 496)");
//given
//given symbols are equally likely all the symbols the probabilities are same
Px_1 = 1/8;//probability of first symbol
Px_2 = 1/8;//probability of second symbol
Px_3 = 3/8;//probability of third symbol
Px_4 = 3/8;//probability of fourth symbol
f_m = poly(0,"f_m");
r = 2//average symbol rate from problem 11.14

//calculaitons
H_X = Px_1*log2(1/Px_1) + Px_2*log2(1/Px_2) + Px_3*log2(1/Px_3) + Px_4*log2(1/Px_4);//entropy
R = H_X*r;//information rate

//results
printf("\n\ni.Entropy = %.2f bits/symbol",H_X)
printf("\n\nii.The information rate of all symbols = %.2f*f_m bits/seconds", R);
