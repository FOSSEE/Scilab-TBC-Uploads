// Problem 16.3,Page no.367

clc;clear;
close;

d_1=2 //cm //Diameter of rivets
p_1=6 //cm //%pitch of rivet
d_2=3 //cm //Diameter of rivet
p_2=8 //cm //%pitch of rivet
sigma_t=120 //MPa //Working stress
sigma_c=160 //MPa //crushing stress
sigma_s=90 //MPa //shearing stress
t=1.2 //cm //thickness of plate
n=2 //No. of rivets

//Calculation (part-1)

P_t=(p_1-d_1)*t*10**-4*sigma_t*10**6 //N //Strength of plate in tearing
P_s=n*%pi*4**-1*d_1**2*10**-4*sigma_s*10**6 //N //Shearing strength
P_c=n*d_1*t*10**-4*sigma_c*10**6 //N //crushing strength
P=p_1*t*10**-4*sigma_t*10**6 //N //Strength of solid per %pitch length

rho_1=P_s*(P)**-1*100 //% //Efficiency of the joint

//Calculation (part-2)

P_t_2=(p_2-d_2)*t*10**-4*sigma_t*10**6 //N //Strength of plate in tearing
P_s_2=n*%pi*4**-1*d_2**2*10**-4*sigma_s*10**6 //N //Shearing strength
P_c_2=n*d_2*t*10**-4*sigma_c*10**6 //N //crushing strength
P_2=p_2*t*10**-4*sigma_t*10**6 //N //Strength of solid per %pitch length

rho_2=P_t_2*(P_2)**-1*100 //% //Efficiency of the joint

//Result
printf("First joint has higher Efficiency i.e %.2f",rho_1);printf(" %% than second joint")
