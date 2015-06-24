clc();
clear;
// To calculate the position of fermi level
Eg=1.12;   //band gap in eV
K=1.38*10^-23;
T=300;   //temp in K
//EF = (Eg/2)+(3*K*T/4)*log(mh/me)
//given me=0.12m0 and mh=0.28m0. therefore mh/me = 0.28/0.12 
//let mh/me be X. therefore X=0.28/0.12 
X=0.28/0.12;
EF=(Eg/2)+((3*K*T/4)*log(X));
printf("the position of fermi level is %f eV",EF);

//answer given in the book is wrong
