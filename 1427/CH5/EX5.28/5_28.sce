//ques-5.28
//Calculating hydrolysis constant and degree of hydrolysis of sodium acetate solution
clc
c=0.1;//molarity of sodium acetate solution
Kw=1.1*10^-4;//ionic product of water (*10^-10)
Ka=1.8*10^-5;//dissociation constant
Kh=Kw/Ka;//hydrolysis constant (*10^-10)
h=sqrt(Kh/c);//degree of hydrolysis (*10^-5)
printf("Hydrolysis constant of acetate solution is %.2f*10^-10 and degree of hydrolysis is %.2f*10^-5.",Kh,h);
