clc
//initialization of new variables
clear
U=5 //m/s
h=1 //cm
mu=0.001    
//calculations
Uav=U/2
Q=U*h*10^-2/2
tau_xz=mu*U/(h*10^-2)
S=1 //m^2
F=tau_xz*S
//results
printf('Shear stress per unit width at wall is %.1f N/m^2',tau_xz)
printf('\n The force required is %.1f N',F)
