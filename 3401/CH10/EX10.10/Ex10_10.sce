clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
alphaF=0.99
alphaR=0.20
Ic=1//mA
IB=0.050//mA

Vcesat=k*T*log(((Ic*(1-alphaR)+IB)*alphaF)/((alphaF*IB-(1-alphaF)*Ic)*alphaR))
disp(Vcesat,"VCEsat in V is=")
