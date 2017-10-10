//ques-18.34
//Computing free energy change
clc
n=5;//moles of ideal gas
T=273+27;//temperature (in K)
V1=50; V2=1000;//volume (in L)
G=2.303*n*8.314*T*log10(V1/V2);
printf("The free energy change is %.3f kJ.",G/1000);
