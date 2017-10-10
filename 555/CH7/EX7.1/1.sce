// Implementation of example 7.1
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

// T is temperature,dS is entropy change
T1=35 // degree celsius
T2=37 // degree celsius
t1=T1+273;
t2=T2+273;
// change in entropy is given by dS=mCvlog(t2/t1)
m=1 // kg
Cv=4.187
dS=m*Cv*log(t2/t1);
printf("change in entropy = %.4f kJ/K",dS);
// end