//ques-18.35
//Calculating q w U H G and A
clc
n=1;//moles of ideal gas
V1=5; V2=10;//volume (in L)
T=300;//temperature (in K)
U=0;//for isothemal and reversible process
H=0;//for isothemal and reversible process
G=-n*8.314*T*log(V2/V1);
A=G;
w=-G;
q=w;
printf("q=w=%.0f J/mol, U=H=0, G=A=%.0f J/mol.",q,A);
