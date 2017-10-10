//ques-5.21
//Calculating pH of given NaOH solution
clc
M=10^-8;//molarity of NaOH
D=M^2+4*(10^-14);//discriminant
x=(-M+sqrt(D))/2;//content of hydrogen ion
p=-log10(x);
printf("pH of given NaOH sample is %.2f.",p);
