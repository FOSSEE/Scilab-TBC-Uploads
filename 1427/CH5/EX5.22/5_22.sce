//ques-5.22
//Calculating dissociation constant for HCN
clc
p=5.2;//pH of HCN
M=0.1;//molarity of HCN
//x = antilog(-p)
x=6.31;//content of H3O+ (*10^-6)
Ka=x^2/M;//dissociation constant (*10^-12)
printf("Dissociation constant of HCN is %.2f*10^-10.",Ka/100);
