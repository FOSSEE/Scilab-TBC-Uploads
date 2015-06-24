clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
Na=10**16 //cm^-3
Nd=10**16 //cm^-3
ni=1.5*10**10 //cm^-3
tau0=5*10^-7 //s
eps=11.7
//Vbr+Vr=z
z=5 //V

W=sqrt(((2*eps))*((Na+Nd)/Na*Nd)*z)
disp(W,"depletion width in cm is= ")//       textbook ans is wrong

Jgen=(e*ni*W)/(2*tau0)
disp(Jgen,"generation current density in A/cm^2 is= ")//       textbook ans is wrong
