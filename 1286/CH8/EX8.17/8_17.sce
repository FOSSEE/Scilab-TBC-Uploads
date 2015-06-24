clc
//initialisation of variabes
dp=(100-1)*1.01*10^5
L=24500//J
T=600//k
d2=11010
d1=10650
//CALCULATIONS
dv=(1/d2)-(1/d1)
dT=dp*T*dv/L
mp=T+(-dT)
//results
printf(' \n new melting point= % 1f c',mp)
