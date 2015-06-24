clc
//initialization of variables
clear
w=10 //cm
s=2.8 //m
P=1 //tonne
Ft=1.4 //cm
Wt=0.8 //cm
Ix=13989.5 //cm^4
Z=699.5 //cm^3
// calculations
BM= 2.8 
T=P*1000*8.21
SF=P*1000
BS=BM*10^5/(Z)
sigmaXA=BS*18.6/20
K=w*Ft*19.3+18.6*Wt*9.3
tau_xy_C=SF/(Ix*Wt)*K
tau_xy_A=tau_xy_C*(w*Ft*19.3)/K     
tau_xy_B=tau_xy_A*0.5*Wt/w
sigmaXB=sigmaXA*19.3/20

tau_max=3*Ft*8210/(w*Ft^3+37.2*Wt^3)
tau_A=3*Wt*8210/(w*Ft^3+37.2*Wt^3)

//For point A
Shear=tau_xy_A-tau_A
sigma_x=sigmaXA
sigma_y=0
tau_xy=Shear
sigma_1=(sigma_x+sigma_y)/2+sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
sigma_2=(sigma_x+sigma_y)/2-sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)

printf('For point A')
printf('\n Total shear= %.1f kg/cm^2 ',Shear)
printf('\n Bending stress = %d kg/cm^2 (Compr.)',sigma_x)
printf('\n Principal stresses are %d (tension), %d (comp.) kg/cm^2 ',sigma_1,sigma_2)

//For point B
printf('\n FOr point B')
printf('\n Bending shear stress is %.2f k/cm^2',tau_xy_B)
sigmaXB=BS*19.3/20
sigma_x=sigmaXB
sigma_y=0
tau_xy=tau_max
sigma_1=(sigma_x+sigma_y)/2+sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
sigma_2=(sigma_x+sigma_y)/2-sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
printf('\n Principal stresses are %d (tension), %d (comp.) kg/cm^2 ',sigma_1,sigma_2)

// Answers in the text are approximations
