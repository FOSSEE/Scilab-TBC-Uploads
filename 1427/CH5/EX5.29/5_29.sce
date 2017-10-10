//ques-5.29
//Calculating hydrolysis constant and degree of hydrolysis of Ammonium chloride
clc
c=0.001;//molarity of ammonium chloride solution
Kw=10^-4;//(*10^-10)
Ka=1.8*10^-5;
Kh=Kw/Ka;//hydrolysis constant (*10^-10)
h=sqrt(Kh/(100*c));//degree of hydrolysis (*10^-4)
printf("Hydrolysis constant of Ammonium chloride solution is %.2f*10^-10 and degree of hydrolysis is %.2f*10^-4.",Kh,h);
