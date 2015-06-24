clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
epsilonx=8.854*10^-14 //F/cm
hv=3//eV
phi=10^-2
ra=2.4*10^-3//W
Eg=1.12//eV
alpha=-4*10^4//cm
W=0.25*10^-4//cm
a=phi*(1-exp(alpha*W))
disp(a,"a in J/sec is= ")
z=(hv-Eg)/hv
disp(z,"z in % is= ")
l=a*z
disp(l,"l in Watt is= ")
r=ra/(q*Eg)
disp(r,"r in photons/sec is= ")
