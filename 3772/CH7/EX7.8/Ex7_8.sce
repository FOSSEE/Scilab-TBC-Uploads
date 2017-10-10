// Problem no 7.8,Page no.189

clc;clear;
close;

L_BC=1.8 //m //Length of BC
L_AB=1.2 //m //Length of AB
sigma_s=70 //MPa //shear stress
d_1=0.05 //m //diameter of BC
d_2=0.1 //m //diameter of AB
r_BC=0.025 //cm //Radius of BC

//Calculations

I_p_BC=%pi*32**-1*d_1**4 //m**4 //Polar M.I of BC
I_p_AB=%pi*32**-1*d_2**4 //m**4 //Polar M.I od AB

//For BC
//theta_1=T*L_BC*(G*10**9*I_p_BC)**-1 //Angle of Twist of C relative to B
//After substituting and simplifying value, we get

//theta_1=3.4923*10**-5*T

//For AB
//theta_2=T*L_AB*(G*10**9*I_p_AB)**-1 //Angle of Twist of B relative to A
//After substituting and simplifying value, we get

//theta_2=1.45513*T

//sigma_s=T*R*(I_P)**-1 //The max shear stress in BC

//After substituting and simplifying value in above equation, we get

T=sigma_s*10**6*I_p_BC*r_BC**-1 
theta_1=3.4923*10**-5*T
theta_2=1.45513*10**-6*T
theta_c=theta_1-theta_2 //radian //total angle of twist

//Result
printf("Total angle of Twist is %.3f radian",theta_c)
