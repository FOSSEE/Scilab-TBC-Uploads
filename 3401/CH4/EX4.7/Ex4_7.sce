clc

Nd=10**16 //cm^-3
Ne=2.8*10**19 //cm^-3
T=300 //K

//(nd/(n0+nd))=z=1/(1+(Ne/2*Nd)*exp(-(Ec-Ed)/kT))
//y=Ec-Ed
y=0.045
k=8.617*10^-5 //eV/K
z=1/(1+(Ne/(2*Nd))*exp(-y/(k*T)))
disp(z,"the donor states is=")
