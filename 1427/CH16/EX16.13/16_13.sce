//ques-16.13
//To show that the reaction is of first order
clc
a=24.09+10.74;//(in degrees)
//t in min; r in degrees
t2=6.18; r2=21.4;
t3=18; r3=17.7;
t4=27.05; r4=15;
r=10.74;
k2=(2.303/t2)*log10(a/(r2+r));
k3=(2.303/t3)*log10(a/(r3+r));
k4=(2.303/t4)*log10(a/(r4+r));
printf("As values of k are nearly same, so reaction is of first order.");
