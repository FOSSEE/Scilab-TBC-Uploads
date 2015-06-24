clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
esp=11.7
esp0=8.85*10^-14 
Nd=2.7*10**17 //cm^-3
Na=2.8*10**19 //cm^-3
Vbi=0.40

//(1/C)^2=2*(Vbi+Vr)/(e*esp*Nd)
//delta(1/C)^2/deltaVr=z
z=4.4*10**13
Nd=2/(e*esp*esp0*z)
disp(Nd,"semiconductor doping in cm^-3 is= ")

phin=(k*T)*log(Na/Nd)
disp(phin,"in v is=")

phibn=Vbi+phin
disp(phibn,"schottky barrier height in V is=")
