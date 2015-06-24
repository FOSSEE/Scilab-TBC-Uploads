// Example 1.36 Are A and B independent
clc;
clear;
A= 3/8 ; 
B= 5/8;// Mistake in book printing In book it is 5/3 
C= 3/4;
disp(C,"P(A+B)=", B, "P(B)=",A,"P(A)=");
disp(A*B,"P(A).P(B)",(A+B-C),"P(AB)",(A+B-C)/(B),"P(A/B)",(A+B-C)/(A),"P(B/A)");
disp("Since P(AB) is not equal to P(A).P(B), so events A and B are not independent");
