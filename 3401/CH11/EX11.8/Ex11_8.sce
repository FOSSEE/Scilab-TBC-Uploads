clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
Cox=6.9*10^-8//F/cm2
esp0=8.85*10^-14 
Vtau=0.65//V
VGS=5//V
L=1.25*10^-4//cm
u=650//cm^2/Vs
IDsat=4*10^-3//A

W=(IDsat*2*L)/(u*Cox*(VGS-Vtau)^2)
disp(W,"W in meter is=")
