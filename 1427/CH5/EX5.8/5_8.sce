//ques-5.8
//Calculating pH of NaOH
clc
N=0.01;//normality of NaOH
a=0.01;//hydroxide in NaOH
b=10^-14/a;//hydrogen in NaOH
pH=-log10(b);//pH of NaOH
printf("pH value of given NaOH is %.0f.",pH);
