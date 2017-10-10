//ques-5.25
//Calculating pH of a buffer solution
clc
Ka=1.8*10^-5;
m1=0.2;//moles of acetic acid
m2=0.1;//moles of sodium acetate
p=-log10(Ka)+log10(m2/m1);
printf("pH of the given buffer is %.4f.",p);
