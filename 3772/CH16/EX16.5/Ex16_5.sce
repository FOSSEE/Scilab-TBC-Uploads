// Problem 16.5,Page no.369

clc;clear;
close;

t=12 //mm //Thickness of plate
d=24 //mm //Diameter of rivets
sigma_t=120 //MPa //stress in tension
sigma_s=200 //MPa //stress in double shear
sigma_b=200 //MPa //stress in Bearing
n=1 //No. of rivet

//Calculation

//P_t=(p-d)*t*10**-4*sigma_t*10**6 //N //Strength of plate in tearing
//After further simplifying we get
//P_t=(p-24)*14400 //N 

P_s=n*%pi*4**-1*d**2*10**-6*sigma_s*10**6 //N //Shearing strength of rivet in double shear

P_b=n*d*10**-3*t*10**-3*sigma_b*10**6 //N //Bearing strength per %pitch length

//Now Equating P_t to P_s or P_b whichever is small
//(p-24)*14400=P_b
p=P_b*14400**-1+24*10**-1 //cm //pitch of rivet
p_min=2.5*d*10**-1 //cm //Minimum pitch

//Now adopting 6.4 cm %pitch

rho=(p-d*10**-1)*p**-1*100

//Result
printf("pitch of rivet is %.2f",p);printf(" cm")
printf("\n Efficiency of joint is %.2f %%",rho)
