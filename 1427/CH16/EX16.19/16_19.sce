//ques-16.19
//Finding temperature at which given half life is achieved
clc
T1=274;//temperature (in K)
Ea=58;//activation energy (in kJ/mol)
t2=6.93*10^-5;//half-life (in /s)
k1=4.5*10^3; k2=0.693/t2;//rate constant
//log10(k2/k1) = (Ea*1000*(T2-T1))/(2.303*8.314*T1*T2)
T2=T1/0.9686;
printf("Temperature required is %.1f K.",T2);
