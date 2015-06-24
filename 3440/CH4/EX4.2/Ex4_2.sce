clc

T=300//K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
A=5*10^-4//m^2
V=0.6//V
Dp=10//cm^2/sec
De=1//cm^2/sec
Dc=2//cm^2/sec
taup=10^-7//sec
taue=10^-8//sec
ND=10^17
NE=10^19
W=0.5*10^-4//cm
ni=9.65*10^9
Lp=sqrt(Dp*taup)
disp(Lp,"Lp in cm=")
pn0=ni^2/ND
disp(pn0,"pn0 in cm^-3=")
Le=sqrt(De*taue)
disp(Le,"Le in cm=")
nE0=ni^2/NE
disp(nE0,"nE0 in cm^-3=")
IEp=exp(V/(k*T))*(q*pn0*Dp*A/W)
disp(IEp,"IEp in A")
Icp=IEp
disp(Icp,"Icp in A =")
IEn=(q*nE0*De*A/10^-4)*(exp(V/(k*T))-1)
disp(IEn,"IEn in A =")
alpha0=Icp/(IEp+IEn)
disp(alpha0,"alpha0 is= ")
















