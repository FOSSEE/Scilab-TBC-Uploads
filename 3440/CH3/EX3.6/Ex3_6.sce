clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
NA=5*10^16 //cm^-3
ND=10^16 //cm^-3
A=2*10^-4//cm^2
V=4//V
taug=5*10^-7
ni=9.65*10^9//cm^-3
epsilonx=8.854*10^-14 //F/cm
W=sqrt((2*epsilonx*11.9/q)*[(NA+ND)/(NA*ND)]*[(k*T/q)*log(NA*ND/ni^2)+V])          //value of V is not substituted in textbook
disp(W,"W in cm=")
Jgen=(q*ni*W/taug)
disp(Jgen,"Jgen in A/cm^2")          //value of V is not substituted in textbook
