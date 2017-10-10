//Ex no.17.5,Page no.381
clc;clear;close;

//Initilization of Variables

L_1=30 //cm //length of longitudinal weld
L_2=16 //cm //length of transverse weld
//t=0.7*s //Effective thickness of weld 
sigma_t_1=100 //MPa //working stress for transverse welds
sigma_t_2=85 //MPa //working stress for longitudinal welds
P=150 //KN //load

//Calculations

//For transverse weld
//P_1=L_1*t*10**-4*sigma_t_1*10**6 

//After substituting values and simplifying above equation, we get,
//P_1=112000*s //N

//For longitudinal weld
//P_2=L_2*t*10**-4*sigma_t_2*10**6

//Total force of resistance of weld
//P=P_1+P_2 //N

//after adding we get,
//P=290500*s //N

//Now equating total forces of resistance to pull of the joint
s=P*10**3*290500**-1 //cm

//Result 
printf("size of weld is %.3f cm",s)
