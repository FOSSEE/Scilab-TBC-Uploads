clc
clear 
printf("example 6.3 page number 215\n\n")

//to find the flux and pressure difference

D_AB=6.75*10^-5   //in m2/s
Z=0.03   //in m
R=8314
p_A1=5.5*10^4   //in Pa
p_A2=1.5*10^4   //in Pa
T=298   //in K

N_A=D_AB*(p_A1-p_A2)/(R*T*Z);
printf("flux = %f kmol/sq m s",N_A)

//for partial pressure
Z=0.02;   //in m
p_A2=p_A1-((N_A*R*T*Z)/D_AB);
printf("\n\npressure = %f Pa",p_A2)
