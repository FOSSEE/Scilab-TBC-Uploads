clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
NA=10^19 //cm^-3
ND=10^16//cm^-3
ni=9.65*10^9
epsilonx=8.854*10^-12 //F/m
Vbi=(k*T)*log(NA*ND/ni^2)
disp(Vbi,"the built in potential in V=")
W=sqrt(2*Vbi/q*ND)
disp(W,"W in cm =")          // ans in textbook is wrong 
epsilonm=((q*ND*W))
disp(epsilonm,"epsilonm in V/cm") // ans in textbook is wrong
