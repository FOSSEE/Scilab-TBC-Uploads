clc

T=300// K
ni=1.5*10^10 //cm^-3
k=8.617*10^-5 //eV/K
Nd=10^16 //cm^-3
Va=0.60 //V

//pn=pn0*exp(e*Va/k*T)
pn0=ni^2/Nd
disp(pn0,"thermal equlibrium minority carrier hole concentration in cm^-3 is= ")

pn=pn0*exp(Va/(k*T))
disp(pn,"minority carrier hole concentration in cm^-3 is= ")

