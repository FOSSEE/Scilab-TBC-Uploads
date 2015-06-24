clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
epsilonx=8.854*10^-14 //F/cm
ni=9.65*10^9//cm^-3
ND=10^16 //cm^-3
Nc=2.86*10^19
Dp=10//cm^2/s
Lp=3.1*10^-3
d=8*10^-7//cm
Js=6.5*10^-5//A/cm^2
V=0.67//V
phibn=k*T*log((110*300^2)/Js)
disp(Js,"Js in V is=")         //textbook ans is wrong
Vn=k*T*log(Nc/ND)
disp(Vn,"Vn in V is=")         //textbook ans is wrong
Vbi=phibn-Vn
disp(Vbi,"Vbi in V is=")         //textbook ans is wrong
W=sqrt((2*epsilonx*11.9*Vbi)/(q*ND))
disp(W,"W in cm is =")         //textbook ans is wrong
Jpo=(q*Dp*ni^2)/(Lp*ND)
disp(Jpo,"Jpo in A/cm^2 is=")
z=Js/Jpo
disp(z,"Js/Jpo ratio of current densities is=")
