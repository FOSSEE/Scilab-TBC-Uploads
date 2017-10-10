//ques-20.7
//Calculating decay constant and time for required decomposition
clc
th=5.25;//half-life (in years)
No=1; N=0.1;//initial and final amount of isotope (in g)
T=0.693/th;//decay constant
t=(2.303/T)*log10(No/N);
printf("The decay constant is %.3f /y and time required is %.2f y.",T,t);
