// Problem 5.13,Page no.135

clc;clear;
close;

d=10 //cm //distance between joists
t=2 //cm //thickness of steel plate 
d_2=20 //cm //depth of beam
sigma_t=8.5 //N/mm**2 //stress in timber 
E_s=2*10**5 //N/mm**2 //Modulus of elasticity of steel
E_t=10**4 //N/mm**2 ////Modulus of elasticity of timber
L=5 //cm //span of beam

//calculation
sigma=10*15**-1*sigma_t //stress in timber at distance of 10 cm from XX (N/mm**2)

dell=sigma*E_t**-1 //strain in timber at 10 cm from XX (N/mm**2)

sigma_s=dell*E_s //N/mm**2 //Max stress

//For Timber
Z_w=1*6**-1*10*30**2*2 //cm**3 //section modulus of timber
M_w=sigma_t*100*Z_w //moment of resistance of timber (N-cm)

//For steel
Z_s=1*6**-1*2*20**2 //cm**3 //section modulus of steel
M_s=sigma_s*Z_s*100  //moment of resistance of steel (N-cm)

M=(M_w+M_s)*10**-5 //total moment of resistance(N-cm)

//M=w*L**2*8**-1 //N*cm //Max bending moment
w=8*M*(L**2)**-1 //kN/m //Max uniform distributed Load

//Result kN/m
printf("Moment of resistance is %.3f N-cm",M)
printf("\n Max uniform distributed Load = %.3f kN/m",w)
// answer in the textbook is not accurate.



