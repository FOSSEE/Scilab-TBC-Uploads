//ques-5.10
//Calculating pH of ammonium hydroxide
clc
c=0.002;//normality of NH4OH
d=2.3;//Percentage dissociation
c1=c*(d/100);//hydroxide content
c2=10^-14/c1;//hydrogen content
p=-log10(c2);//pH
printf("pH of ammonium hydroxide is %.4f.",p);
