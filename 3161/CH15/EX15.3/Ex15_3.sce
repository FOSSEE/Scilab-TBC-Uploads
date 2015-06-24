clc;
//page 769
//problem 15.3

//Number of Flip Flops N
N = 13;

//Maximal length of sequence L
L = 2^N - 1;

//Upper Bound S
S = (L - 1)/N;

//No of basic sequences and mirror images
disp('No of basic sequences and mirror images is '+string(S/2)');

