clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
epsilonx=8.854*10^-14 //F/cm
ni=9.65*10^9//cm^-3
NA=10^17 //cm^-3
d=8*10^-7//cm
Nc=2.86*10^19
Co=6.9*10^-7//F/cm^2
C1=1.8*10^15//(cm^2/F)^2
C2=6.2*10^15//(cm^2/F)^2
V1=0//V
V2=-1//V
Vbi=0.42
//d(1/C^2)/dv=a
a=(C2-C1)/(V2-V1)
disp(a,"a in (cm^2/F)^2")
ND=(2/(q*epsilonx*11.9))*(-1/(a))
disp(ND,"ND in ")
Vn=k*T*log(Nc/ND)
disp(Vn,"Vn in V is=")
phibn=Vbi+Vn
disp(phibn,"phibn in V is= ")

