clc
// initialization of variables
clear
tau_xx= -1 // kgf/cm^2
tau_yy= 0 // kgf/cm^2
tau_xy= 7 // kgf/cm^2
// calculations 
sigma_1=(tau_xx+tau_yy)/2+sqrt((1/2*(tau_xx-tau_yy))^2+tau_xy^2)
sigma_2=(tau_xx+tau_yy)/2-sqrt((1/2*(tau_xx-tau_yy))^2+tau_xy^2)
x=sigma_1 // positive one is tension
if(sigma_2>sigma_1)
    x=sigma_2
end
// Results
printf('The diagonal tension is %.3f kgf/cm^2',x)
