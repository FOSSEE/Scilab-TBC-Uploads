//ques-5.12
//Calculating pH of a mixture
clc
Ka=1.85*10^-5;
v1=50;//volume of scetic acid (in mL)
v2=50;//volume of sodium acetate ion (in mL)
M1=0.2;//molarity of acetic acid
M2=0.2;//molarity of acetate ion
pH=-log10(Ka)+log10((v1*M1)/(v2*M2));
printf("The pH of the mixture is %.3f.",pH);

