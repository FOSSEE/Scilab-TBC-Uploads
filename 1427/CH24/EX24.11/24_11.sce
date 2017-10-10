//ques-24.11
//Calculating degree of dissociation of acid
clc
C1=0.72/500;//concentration of acid in ether layer (in g/mL)
C2=6/500;//concentration of acid in aqueous layer (in g/mL)
K=0.16;//partition coefficient
deg=1-C1/(C2*K);
printf("The degree of dissociation of acid is %.2f.",deg);
