clc;
clear;
Beta=0.2*10^-3 //bandwidth in m
myu=1.5 //refractive index of the biprism
myu_0=1.3 //refractive index of the liquid 

//calculation
Beta_0=(Beta*(myu-1))/(myu-myu_0)
mprintf("The bandwidth when the setup is immersed in liquid is = %1.0e m",Beta_0)
