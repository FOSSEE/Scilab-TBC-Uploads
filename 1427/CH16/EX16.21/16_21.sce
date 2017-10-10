//ques-16.21
//Determining percent decomposition in a 30 percent solution
clc
Ea=70;//activation energy (in kJ/mol)
a=100;//say
x1=(25/100)*a;
t=20;//time (in min)
k1=(2.303/t)*log10(a/(a-x));//rate constant (in /min)
T1=298; T2=313;//temperature (in K)
//log10(k2/k1) = (Ea*(T2-T1))/(2.303*R*T1*T2)
k2=5.554*10^-2;//rate constant (in /min)
//k2 = (2.303/t)*log10(a/(a-x2))
x2=66.97;
printf("Percent decomposition required is %.2f.",x2);
