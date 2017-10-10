//ques-16.5
//To show a relation at two different times
clc
//1st order reaction
t1=0.693/k;//time for half reaction
a=1;
x=0.999;
t2=(2.303/k)*log10(a/(a-x));//time for 99.9% of reaction
z=t2/t1;
printf("Time required for 99.9 percent of reaction to take place is about %.0f times that is required for half the reaction.",z);
