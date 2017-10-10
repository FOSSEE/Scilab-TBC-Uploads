//ques-5.14
//Calculating pH of the solution
clc
Ka=1.8*10^-5;
x1=0.2;//moles of HCl added
x2=1;//moles of acetic acid
x3=1;//moles of acetate ion
p=-log10(Ka)+log10((x2+x1)/(x3-x1));
printf("The pH of the solution is %.4f.",p);
