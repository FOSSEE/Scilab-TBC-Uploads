//ques-5.13
//Calculating pH of buffer solution
clc
Ka=1.8*10^-5;
v1=30;//volume of NaOH (in mL)
M1=0.1;//molarity of NaOH
v2=100;//volume of acetic acid (in mL)
M2=0.1;//molarity of acetic acid
t=v1+v2;//total volume (in mL)
v3=v2-v1;//volume of actic acid unreacted (in mL)
c1=(v1*M1)/t;//content of acetate ion
c2=(v3*M2)/t;//content of acetic acid unreacted
p=-log10(Ka)+log10(c1/c2);
printf("The pH of the buffer solution is %.4f.",p);
