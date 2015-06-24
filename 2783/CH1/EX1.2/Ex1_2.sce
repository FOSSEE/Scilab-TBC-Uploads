clc
//initialization of new variables
clear
t=2 //cm  thickness
U=3 //m/s   Velocity
mu=0.29 //kg/m s   Coefficient of Viscocity
//calculations
tau=mu*U/(t*10^-2)
//results
printf(' Shear = %d N/m^2',tau)
