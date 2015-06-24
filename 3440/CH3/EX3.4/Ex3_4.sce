clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
NA=2*10^19 //cm^-3
ND=8*10^15 //cm^-3
V=4//V
ni=9.65*10^9
epsilonx=8.854*10^-14 //F/cm
Vbi=(k*T)*log(NA*ND/ni^2)
disp(Vbi,"the built in potential in V=")
W=sqrt((2*Vbi*11.9*epsilonx)/(q*ND))
disp(W,"W in cm =")          // ans in textbook is wrong 
Cj=sqrt((q*epsilonx*11.9*ND)/(2*Vbi))
disp(Cj,"Cj in F/cm^2 =")
W1=sqrt((2*(Vbi+V)*11.9*epsilonx)/(q*ND))
disp(W1,"W1 in cm=")
Cj1=sqrt((q*epsilonx*11.9*ND)/(2*(Vbi+V)))
disp(Cj1,"Cj1 in F/cm^2")
