//ques-5.20
//Calculating pH of HCl solution
clc
M=10^-8;//molarity of HCl
D=M^2+4*(10^-14);//discriminant
x=(-M+sqrt(D))/2;
c=M+x;//content of hydrogen ion
p=-log10(c);
printf("pH value for given HCl is %.2f.",p);
