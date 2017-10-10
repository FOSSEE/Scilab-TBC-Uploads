// Problem no 7.13,Page no.193

clc;clear;
close;

D=8 //cm //Diameter of bronze
d=5 //cm //diameter of steel shaft
R_b=4 //cm //Radius of bronze
R_s=2.5 //cm //Radius of steel shaft
sigma_b=40 //MPa //shear stress of bronze
sigma_s=65 //MPa //shear stress of steel shaft
N=500 //r.p.m
G_s=85 //GPa //Modulus of rigidity of steel
G_b=45 //GPa //Modulus of rigidity of bronze

//Calculations

I_p_s=%pi*32**-1*(5*10**-2)**4 //m**4 //Polar M.I of Steel shaft
I_p_b=%pi*32**-1*((8*10**-2)**4-(5*10**-2)**4) //m**4 //Polar M.I of Bronze shaft

//T*(G_b*I_p_b)**-1=T_s*(G_s*I_s)**-1

//After substituting and simplifying above equations,we get

//T_b=2.94*T_s

T_b=I_p_b*sigma_b*10**6*(R_b*10**-2)**-1 //N*m //Torque carried by bronze
T_s=I_p_s*sigma_s*10**6*(R_s*10**-2)**-1 //N*m //Torque carried by steel shaft
T_s_1=T_b*2.94**-1 //N*m 

T=T_b+T_s_1 //N*m //Total Torque
P=(2*%pi*N*T*(60000)**-1) //KW //Power transmitted

//Result
printf("Power transmitted by compound shaft is %.2f",P);printf(" KW")
