// Problem 16.6,Page no.370

clc;clear;
close;

t=12 //mm //thickness of plate
d=18 //mm //Diameter of rivet
p=8 //cm //%pitch of rivet
sigma_t=460 //MPa //Tensile stress
sigma_s=320 //MPa //shearing stress
sigma_b=640 //MPa //bearing stress
n=2 //No. of rivet

//Calculation

P_t=(p-d*10**-1)*t*10**-1*10**-4*sigma_t*10**6 //N //Strength of plate in tearing
P_s=n*2*%pi*4**-1*d**2*10**-6*sigma_s*10**6 //N //Shearing strength of rivet pr %pitch length
P_b=n*d*10**-3*t*10**-3*sigma_b*10**6 //N //Bearing strength per %pitch length

//The joint will fail at a pull of P_b

S=p*t*sigma_t*10**6*10**-5 //N //strength of solid plate
rho=P_b*S**-1*100 //Efficiency of joint

//Result
printf("Pull per pitch length at which joint will fail is %.2f",P_b);printf(" N")
