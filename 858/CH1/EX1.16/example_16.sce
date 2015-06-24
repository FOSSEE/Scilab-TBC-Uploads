clc
clear 
printf('example 1.16 page number 49\n')

//to find the flow rate and pressure drop
density_water=988     //in kg/m3
viscosity_water=55*10^-5   //in Ns/m2
density_air=1.21      //in kg/m3
viscosity_air=1.83*10^-5   //in Ns/m2
L=1     //length in m

L1=10*L   //length in m
Q=0.0133;

Q1=((Q*density_water*viscosity_air*L)/(L1*viscosity_water*density_air))

printf("flow rate = %f cubic meter/s\n",Q1)

//equating euler number

p=9.8067*10^4;     //pressure in pascal
p1=(p*density_water*Q^2*L^4)/(density_air*Q1^2*L1^4);

printf("pressure drop corresponding to 1kp/square cm = %f kP/square cm",p1/p)
