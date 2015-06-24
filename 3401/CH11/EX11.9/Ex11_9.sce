clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
Cox=6.9*10^-8//F/cm2
esp0=8.85*10^-14 
Vtau=0.65//V
VGS1=1.5//V
VGS2=2.5//V
VDS=0.10//V
L=2*10^-6//cm
u=650//cm^2/Vs
ID1=35*10^-6//A
ID2=75*10^-6//A
W=15*10^-6//m

un=(ID2-ID1)*L/(W*Cox*(VGS2-VGS1)*VDS)
disp(un,"un in cm^2/Vs is=")
