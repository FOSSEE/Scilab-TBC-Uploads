// Problem no 7.9,Page no.190

clc;clear;
close;

D=0.05 //m //Diameter of shaft
sigma_s_a=55 //MPa //shear stress of alloy
sigma_s_s=80 //MPa //shear stress of steel
P=185 //KW //Power 

//Calculations

//For alloy shaft,
//theta*L**-1=T*(G_A*I_p_A)**-1

//For steel shaft,
//theta*L*-1=I*(G_S*I_p_S)**-1

//After substituting and simplifying we get
d=(246.2*10**-8)**0.25 //m //Internal diameter of steel shaft

T_1=%pi*16**-1*D**3*sigma_s_s*10**6 //N*m //For alloy shaft max torque
T_2=%pi*16**-1*((D**4-d**4)*D**-1)*sigma_s_s*10**6 //N*m //For steel shaft max torque

//Permissible torque,T_2

//P=2*%pi*N*T_2*(60000)**-1 

//After substituting we get
N=P*60000*(2*%pi*T_2)**-1 //r.p.m //Speed

//Result
printf("The speed at which the shafts to be driven is %.f rpm",N)
