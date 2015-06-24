clc

k=8.617*10**-5//eV/K
e=1.6*10**-19 //C
un=1200
Nd=10^16 //cm^-3
esp0=8.85*10^-14 
espr=11.7

sigma=e*un*Nd
disp(sigma,"conductivity in per ohm cm is= ")

esp=espr*esp0
disp(esp,"permittivity of silicon in F/cm")

taud=esp/sigma
disp(taud,"dielectric relaxtion time constant in sec is= ")
