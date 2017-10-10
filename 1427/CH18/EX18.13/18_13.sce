//ques-18.13
//Calculating change in entropy for an isothermal expansion
clc
n=5;//moles of gas
//r=V2/V1
r=6;
S=2.303*8.314*n*log10(r);//change in entropy
printf("The change in entropy is %.1f J/K.",S);
