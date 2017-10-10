//ques-25.13
//Calculating pressure using van der Waals equation
clc
n=2;//moles of ammonia
T=300;//temperature (in K)
V=5*10^-3;//volume (in kL)
a=0.417;//(in Nm^4/mol^2)
b=0.037*10^-3;//(in kL/mol)
P=((n*8.314*T)/(V-n*b))-((a*n^2)/(V^2));
printf("The pressure required is %d N/m^2.",P);
