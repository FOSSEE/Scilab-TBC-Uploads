//ques-18.16
//Calculating increase in entropy
clc
v1=2.8;//volume of O2 (in L)
v2=19.6;//volume of H2 (in L)
n1=v1/22.4; n2=v2/22.4;//(in moles)
x1=n1/(n1+n2); x2=n2/(n1+n2);
S=-8.314*2.303*(x1*log10(x1)+x2*log10(x2));
printf("The increase in entropy is %.3f J/K.",S);
