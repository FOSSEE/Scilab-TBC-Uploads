//ques-5.9
//Calculating pH of two samples
clc

//Part (i)
c=0.001;//molarity of HCl
p1=-log10(c);//pH of HCl

//Part (ii)
c=0.04;//molarity of HNO3
p2=-log10(4*10^12);//pH of HNO3
printf("pH value of HCl is %.0f and pH of nitric acid is %.3f.",p1,p2);
