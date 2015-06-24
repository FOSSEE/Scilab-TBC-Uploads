clc
//initialisation
T=5+273//k
v=10^-6//m3
a=15*10^-6//k^-1
cp=1005//cal/kg/k
dp=(1000-0)*10^5//N/m2
//CALCULATIONS
dt=(T*a*v*dp)/(cp*4.2)
//results
printf(' \n temperature of water rises by= % 1f k',dt)
