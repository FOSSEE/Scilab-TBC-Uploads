//ques-5.31
//Calculating dissociation constant of HCN
clc
c=0.02//molarity of KCN
h=4.9;//percentage of hydrolysis
Kw=10^-14;
Kh=(h/100)^2*c;//hydrolysis constant
Ka=Kw/Kh;//dissociation constant
printf("Dissociation constant for HCN is %.2f*10^-10.",Ka*10000000000);
