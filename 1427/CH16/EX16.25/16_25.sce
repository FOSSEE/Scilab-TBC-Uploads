//ques-16.25
//Calculating relaxation time and equilibrium constant
clc
ka=1.5*10^4; kb=3*10^5;//rate constants (in /s)
R_T=1/(ka+kb);//relaxation time 
K=ka/kb;//equilibrium constant
printf("Relaxation time is %.10f s and equilibrium constant is %.2f.",R_T,K);
