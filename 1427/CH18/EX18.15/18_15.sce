//ques-18.15
//Calculating entropy of mixing per mole of the mixture
clc
n1=1;//mole sof hydrogen
n2=9;//moles of nitrogen
x1=n1/(n1+n2);
x2=n2/(n1+n2);
S=-8.314*2.303*(x1*log10(x1)+x2*log10(x2));//entropy of mixing
printf("The entropy of mixing is %.3f J/K/mol.",S);
