// Problem no 7.10,Page no.190

clc;clear;
close;

sigma_s=90 //MPa //shear stress of steel
sigma_d=60 //MPa //shear stress of duralumin
G_d=28 //GPa //modulus of rigidity of duralumin
G_s=84 //GPa //modulus of rigidity of steel
L=1 //m //Length of shaft

//Calculations

//theta*L**-1=sigma_s*(G_s*R_s)**-1=sigma_d*(G_d*R_d)**-1

//After substituting and simplifying,we get,
//D=2*d

//T_s=%pi*16**-1*d**3*sigma_s //N*m //torque of steel
//T_d=%pi*16*(((D**4-d**4)*D**4)**-1)*sigma_d //N*m //torque of duralumin

//After substituting and simplifying above two equations,we get,

//T_s=17.6714*10**6*d**3 //N*m
//T_d=88.3572*d**3 //N*m

//T=T_s+T_d //Total torque

//T=106.02875*10**6*d**3 

d=(700*(106.02875*10**6)**-1)**0.333 //m 
D=2*d //m
R_s=d*2**-1 //m

theta=(sigma_s*10**6*L*(G_s*10**9*R_s)**-1)*180*%pi**-1 //degree //Angle of twist

//Result
printf("The Angle of Twist is %.2f",theta);printf(" Degree")
