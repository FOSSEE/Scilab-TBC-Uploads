// Problem no 7.7,Page no.188

clc;clear;
close;

P_C=45 //KW Power aplled at C
P_B=15 //KW Power taken off at B
P_BA=30 //KW //Power transmitted across BA
G=85 //GPa

//Calculations (Part-1)

//For BC
P_1=45 //KW //Power across BC
N_1=200  //r.p.m
d_1=0.075 //m //diameter of shaft BC
L_BC=2 //m //Length of shaft BC


T_BC=60000*P_1*(2*%pi*N_1)**-1 //N*m //Torque transmitted across BC
sigma_s_BC=16*T_BC*((%pi*(d_1)**3)**-1)*10**-6 //N/m**2 //max shear stress in BC
I_p_BC=%pi*32**-1*d_1**4 //m**4 //Polar M.I of BC
theta_1=T_BC*L_BC*(G*10**9*I_p_BC)**-1 //Radian //Max angle of twist theta_1 in BC of B relative to C

//For AB
P_2=30 //KW //Power across AB
N_2=200  //r.p.m
d_2=0.05 //m //diameter of shaft AB
L_BC=4 //m //Length of shaft AB


T_AB=60000*P_2*(2*%pi*N_2)**-1 //N*m //Torque transmitted across AB
sigma_s_AB=16*T_AB*(%pi*(d_2)**3)**-1*10**-6 //MN/m**2 //max shear stress in AB
I_p_AB=%pi*32**-1*d_2**4 //m**4 //Polar M.I of AB
theta_2=T_AB*L_BC*(G*10**9*I_p_AB)**-1 //Radian //Max angle of twist theta_1 in AB of A relative to B
C=(theta_1+theta_2)*180*%pi**-1 //radian //Angle of Twist of gear


//Result
printf("Angle of Twist of gear is %.2f",C);printf(" Degree")
printf("\n The maximum shear stress developed in the shaft AB is %.2f MN/m^2",sigma_s_AB)
