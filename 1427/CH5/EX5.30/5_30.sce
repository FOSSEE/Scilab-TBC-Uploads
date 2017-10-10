//ques-5.30
//Calculating hydrolysis constant and dissociation constant of acetic acid
clc
Kb=1.8*10^-5;
Kw=10^-14;
h=5.5*10^-3;//degree of hydrolysis
Kh=h^2;//hydrolysis constant
Ka=Kw/(Kh*Kb);//dissociation constant
printf("Hydrolysis constant of acetic acid is %.2f*10^-5 and Dissociation constant is %.2f*10^-5.",Kh*100000,Ka*100000);
