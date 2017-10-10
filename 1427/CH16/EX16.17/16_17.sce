//ques-16.17
//Finding temperature at which half life becomes 10 minutes
clc
A=4*10^13;//arrhenius constant (in /s)
Ea=98.6;//energy of activation (in kJ/mol)
t=10;//half-life (in min)
k=0.693/(t*60);//rate constant
T=(Ea*1000)/(2.303*8.314*log10(A/k));//temperature
printf("Temperature required is %.2f K.",T);
