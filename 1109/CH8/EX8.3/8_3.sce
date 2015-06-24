clear;
clc;
S=2;
Lr=10*log10(((S+1)^2)/(4*S));
Ld=10*log10((S+1)/(S-1));
L=Ld+Lr;
printf("Insertion loss = %f db",round(L*100)/100);
//the difference in result  is due to erroneous value in textbook.
disp("The difference in result is due to erroneous value in textbook")
