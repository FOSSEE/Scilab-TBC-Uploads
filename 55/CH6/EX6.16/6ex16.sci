U=1000;  //number of elements in the set of positive integers not exceeding 1000
A=U/3;   //number of elements in the subset of integers divisible by 3
B=U/5;   //number of elements in the subset of integers divisible by 5
C=U/7;   //number of elements in the subset of integers divisible by 7
AandB=floor(U/(3*5))   //number of elements in the subset containing numbers divisible by both 3 and 5
AandC=floor(U/(3*7))   //number of elements in the subset containing numbers divisible by both 3 and 7
BandC=floor(U/(5*7))   //number of elements in the subset containing numbers divisible by both 5 and 7
AandBandC=floor(U/(3*5*7))  //number of elements in the subset containing numbers divisible by 3,5 and 7
s=U-(A+B+C)+(AandB+AandC+BandC)-(AandBandC);  // By inclusion-exclusion principle
S=round(s);
disp(S,'The number of integers in the set U, which are not divisible by 3,5 and 7 is')