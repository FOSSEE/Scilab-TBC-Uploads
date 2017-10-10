//ques-16.26
//Calculating values of rate constants
clc
K=0.1;//equilibrium constant
R_T=10^-5;//relaxation time (in s)
//R_T = 1/(ka+kb)
//K=ka/kb
ka=1/(11*10^-5);
kb=10*ka;
printf("The value of ka is %d /s and kb is %d /s.",ka,kb);
