//ques-20.6
//Calculating time for required decomposition
clc
th=3.8;//half-life (in days)
r=1/20;//= N/No
T=0.693/th;//decay constant
t=(2.303/T)*log10(1/r);
printf("The time required is %.2f days.",t);
