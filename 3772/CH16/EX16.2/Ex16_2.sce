// Problem 16.2,Page no.367

clc;clear;
close;

p=7.5 //cm //%pitch of rivets
t=1.5 //cm //Thickness of plate
d=2.5 //cm //diameter of rivets
sigma_t=400 //MPa //Working stress
sigma_c=640 //MPa //crushing stress
sigma_s=320 //MPa //shearing stress
n=2 //No. of rivets

//Calculation

P_t=(p-d)*t*10**-4*sigma_t*10**6*10**-3 //kN //Strength of plate in tearing
P_s=n*%pi*4**-1*d**2*10**-4*sigma_s*10**6*10**-3 //kN //Shearing strength
P_c=n*d*t*10**-4*sigma_c*10**6*10**-3 //kN //crushing strength

//Thus Minimum force that will rapture the joint is least of P_t,P_s,P_c i.e P_t

//Result
printf("Minimum force that will rapture the joint is %.2f",P_t);printf(" kN")
