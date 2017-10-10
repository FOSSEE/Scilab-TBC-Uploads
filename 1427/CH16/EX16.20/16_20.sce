//ques-16.20
//Calculating activation energy and k at 670 K
clc
//logk = 14.34 - 1.25*10^4/T
Ea=1.25*10^4*2.303*8.314;//activation energy
T=670;//temperature (in K)
k=4.8*10^-5;//rate constant (in /s)
printf("Activation energy is %d kJ/mol and k at 670K is %.6f /s.",Ea/1000,k);
