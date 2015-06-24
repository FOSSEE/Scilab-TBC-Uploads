clc
clear 
printf("example 6.4 page number 216\n\n")

//to find the flux of NH3 and equimolar counter diffusion flux

Z=0.15   //in m
P=1.103*10^5    //in Pa
p_A1=1.5*10^4    //in Pa
p_A2=5*10^3    //in Pa

p_B1=P-p_A1;
p_B2=P-p_A2;

D_AB=2.30*10^-5   //in m2/s
R=8314
T=298   //in K

//for non diffusing N2
p_BM=(p_B2-p_B1)/log (p_B2/p_B1);
N_A=D_AB*(p_A1-p_A2)*P/(R*T*Z*p_BM);
printf("flux = %f kmol/sq m s",N_A)

//for diffusing N2
N_A=D_AB*(p_A1-p_A2)/(R*T*Z);
printf("\n\nflux = %f kmol/sq m s",N_A)
