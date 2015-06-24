clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
epsilons=8.854*10^-31 //F/cm
ni=9.65*10^9//cm^-3
ND=5*10^19//cm^-3
phibn=0.8//V
I=1//A
mn=0.26
Rc=10^-6//ohm cm^2
A=10^-5//cm^2
h=1.05*10^-34
a=Rc/A
disp(a,"Rc/A in ohm is=")
C2=(4*sqrt(mn*epsilons*(1.05*10^-10)))/h
disp(C2,"C2 in m^(3/2)/V is= ")                 //texbook ans is wrong
I0=(A/Rc)*(sqrt(ND*10^6)/C2)*exp((C2*phibn)/sqrt(ND*10^6))
disp(I0,"I0 in A is= ")         //textbook ans is wrong
V=phibn-(sqrt(ND)/C2)*log(I0/I)
disp(V,"V in V is= ")

