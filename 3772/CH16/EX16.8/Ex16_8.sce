// Problem 16.8,Page no.371

clc;clear;
close;

D=1.5 //cm //Diameter of boiler
rho=75 //% //Efficiency of joint
sigma_t=85 //MPa //stress in tension
sigma_s=70 //MPa //stress in shear
P=1 //MPa //Steam Pressure //Notification has been changed

//Calculation

t=P*10**6*D*(2*sigma_t*10**6*rho*10**-2)**-1*100

//Adopt 12 mm thickness of plate
t_1=12 //mm 
d=6*t_1**0.5

//Adopt 21 mm diameter of rivet
d_1=21 //mm

//P_t=(p-d_1*10**-1)*t*10**-1*10**-4*sigma_t*10**6 //N //Strength of plate in tearing
//After substituting values and further simplifying we get
//P_t=(p-2.1)*10200 //N 

P_s=1.875*%pi*4**-1*d_1**2*10**-6*2*sigma_s*10**6

//(p-d_1*10**-1)*10200=P_s
p=P_s*10200**-1+d_1*10**-1

//Result
printf("Pitch of plate is %.2f",p);printf(" cm")
