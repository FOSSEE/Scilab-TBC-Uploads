clc

T=300 //K
k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
Nd=10**16 //cm^-3
Nr=2.8*10**19 //cm^-3
Vbi=0.33
phim=4.55 //V
psi=4.01 //V
esp=11.7
esp0=8.85*10^-14 

hb=phim-psi
disp(hb,"barrier height in V is= ")

phiu=(k*T)*log(Nr/Nd)
disp(phiu,"schottky barrier height in V is= ")

Vbt=hb-phiu
disp(Vbt,"in V is=")

xn=sqrt((2*esp*esp0*Vbi)/(e*Nd))
disp(xn,"space charge in cm is= ")

Emax=(e*Nd*xn)/(esp*esp0)
disp(Emax,"maxi electric field in V/cm is= ")
