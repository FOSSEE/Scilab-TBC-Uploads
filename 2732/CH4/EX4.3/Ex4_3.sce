clc
// initialization of variables
clear
sigma_x=1400 //kg/cm^2
tau_xy=400// kg/cm^2
ep_z=-3.6*10^-6
nu=1/4
E=2*10^8 //kg/cm^2
// calculations
sigma_y=(-ep_z*E/nu)-sigma_x
sigma_1=(sigma_x+sigma_y)/2+sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
sigma_2=(sigma_x+sigma_y)/2-sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
th=0.5*atan(2*tau_xy/(sigma_x-sigma_y))
th=th*180/%pi
printf('sigma_y is %d kg/cm^2',sigma_y)
printf('\n The principal stresses are %d , %d kg/cm^2',sigma_1,sigma_2)
printf('\n The direction is given by theta = %.2f degrees',th)

// angle was given wrong in the text
