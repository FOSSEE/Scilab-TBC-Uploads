// Problem no 7.14,Page no.194

clc;clear;
close;

d=10 //cm //Diameter of shaft
r=5 //cm //radius of shaft
P=100 //KW //Power 
N=120 //r.p.m 
n=6 
L_k=14 //cm //Length of key
B_k=2.5 //cm //width of key
n=6 
d_b=2 //cm //Diameter of bolt
D_b=30 //cm //Diameter of bolt circle
R_b=15 //cm //radius 

//Calculations

T=(P*60000*(2*%pi*N)**-1)*10**2 //N*m //Torque
I_p=%pi*32**-1*d**4 //Polar M.I of shaft
sigma_s=T*r*(I_p)**-1 //N/cm**2
sigma_k=T*(L_k*B_k*r)**-1 //N/cm**2
sigma_b=T*4*(n*%pi*d_b**2*R_b)**-1 //N/cm**2

//Result
printf("shear stress in shaft %.2f",sigma_s);printf(" N/cm**2")
printf("\n                   Key %.2f",sigma_k);printf(" N/cm**2")
printf("\n                 bolts %.2f",sigma_b);printf(" N/cm**2")
