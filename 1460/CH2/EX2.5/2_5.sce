clc
//initialization of variables
w=1 //lbm
Sw=0.3120 //B/lbm R
Ss=1.7566 //B/lb R
T=672 //R
//calculations
Q=T*(Ss-Sw)
//results
printf("Latent heat of water = %d B/lbm",Q)
