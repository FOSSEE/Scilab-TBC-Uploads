clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
NA=10^18 //cm^-3
ND=10^15//cm^-3
ni=9.65*10^9
Vbi=(k*T)*log(NA*ND/ni^2)
disp(Vbi,"the built in potential in V=")
