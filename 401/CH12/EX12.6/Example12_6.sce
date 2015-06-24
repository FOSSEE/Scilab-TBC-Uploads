//Example 12.6
//Program to estimate the dispersion-equalization penalty for bit 
//rates:
//(a)25 Mbit/s
//(b)150 Mbit/s

clear;
clc ;
close ;

//Given data
L=8;                     //km - LENGTH OF FIBER LINK
sigma=0.6*10^(-9);       //s/km - RMS PULSE BROADENING


//(a)For 25 Mbit/s
Bt=25*10^6;               //bit/sec - BIT RATE
//Without mode coupling
sigma_T=sigma*L;
D_L=2*(2*sigma_T*Bt*sqrt(2))^4;
printf("\n\n\t (a)For Bt = %1.0f Mbit/s, Without mode coupling, D_L = %0.2f dB",Bt/10^6,D_L);
//With mode coupling
sigma_T=sigma*sqrt(L);
D_L=2*(2*sigma_T*Bt*sqrt(2))^4;
printf("\n\n\t    For Bt = %1.0f Mbit/s, With mode coupling, D_L = %0.2f X 10^(-4) dB",Bt/10^6,D_L/10^(-4));

//(b)150 Mbit/s
Bt=150*10^6;              //bit/sec - BIT RATE
//Without mode coupling
sigma_T=sigma*L;
D_L=2*(2*sigma_T*Bt*sqrt(2))^4;
printf("\n\n\t (b)For Bt = %1.0f Mbit/s, Without mode coupling, D_L = %0.2f dB",Bt/10^6,D_L);
//With mode coupling
sigma_T=sigma*sqrt(L);
D_L=2*(2*sigma_T*Bt*sqrt(2))^4;
printf("\n\n\t    For Bt = %1.0f Mbit/s, With  mode coupling, D_L = %0.2f dB",Bt/10^6,D_L);