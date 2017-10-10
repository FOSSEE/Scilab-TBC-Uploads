//ques-5.19
//Calculating pH of Calcium hydroxide
clc
M=0.005;//molarity of calcium hydroxide
c1=2*M;//content of hydroxide ion (in mol/L)
c2=10^-14/c1;//content of hydrogen ion (in mol/L)
p=-log10(c2);
printf("the pH required is %.0f.",p);
