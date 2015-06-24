clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
Nd=7*10^18 //cm^3
esp=11.7
esp0=8.85*10^-14 
phibn=0.67 //V
Vbi=0.67

xn=sqrt((2*esp*esp0*Vbi)/(e*Nd))
disp(xn,"space charge width in cm is= ")

