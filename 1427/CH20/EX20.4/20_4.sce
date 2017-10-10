//ques-20.4
//Calculating time for required decomposition
clc
th=14.3;//half-life (in days)
No=10; N=0.3;//initial and final amount of P-32 (in mg/L)
T=0.693/th;
t=(2.303/T)*log10(No/N);
printf("The time required is %.3f days.",t);
