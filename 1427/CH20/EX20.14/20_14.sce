//ques-20.14
//Calculating age of a wooden article
clc
No=15.2; N=2;//initial and final counts/min/g in wood
th=5760;//half-life (in years)
T=0.693/th;//decay constant
t=(2.303/T)*log10(No/N);
printf("The age of the wooden article is %.0f years.",t);
