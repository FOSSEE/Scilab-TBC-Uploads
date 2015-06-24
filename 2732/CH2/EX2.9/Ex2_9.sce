clc
// initialization of variables
clear
// part (a)
tau_xx=300 // kgf/cm^2
tau_yy=0 // kgf/cm^2
tau_xy=600 // kgf/cm^2
// calculations
sigma_1=(tau_xx+tau_yy)/2+sqrt((1/2*(tau_xx-tau_yy))^2+tau_xy^2)
sigma_2=(tau_xx+tau_yy)/2-sqrt((1/2*(tau_xx-tau_yy))^2+tau_xy^2)
Beta=atan(2*tau_xy/(tau_xx-tau_yy))
Beta=Beta*180/%pi
// Results
printf('Part (a) \n The magnitude of principal stresses are %d,%d kgf/cm^2 and \n the direction is given by 2*beta=%.2f degrees',sigma_1,sigma_2,Beta)

//part (b)
tau_xx=1000 // kgf/cm^2
tau_yy=150 // kgf/cm^2
tau_xy=450 // kgf/cm^2
// calculations
sigma_1=(tau_xx+tau_yy)/2+sqrt((1/2*(tau_xx-tau_yy))^2+tau_xy^2)
sigma_2=(tau_xx+tau_yy)/2-sqrt((1/2*(tau_xx-tau_yy))^2+tau_xy^2)
Beta=atan(2*tau_xy/(tau_xx-tau_yy))
Beta=Beta*180/%pi
// Results
printf('\n Part (b) \n The magnitude of principal stresses are %d,%d kgf/cm^2 and \n the direction is given by 2*beta=%.2f degrees',sigma_1,sigma_2,Beta)

// part (c)
tau_xx=-850 // kgf/cm^2
tau_yy=350 // kgf/cm^2
tau_xy=700 // kgf/cm^2
// calculations
sigma_1=(tau_xx+tau_yy)/2+sqrt((1/2*(tau_xx-tau_yy))^2+tau_xy^2)
sigma_2=(tau_xx+tau_yy)/2-sqrt((1/2*(tau_xx-tau_yy))^2+tau_xy^2)
Beta=atan(2*tau_xy/(tau_xx-tau_yy))
Beta=Beta*180/%pi
// Results
printf('\n Part (c) \n The magnitude of principal stresses are %d,%d kgf/cm^2 and \n the direction is given by 2*beta=%0.2f',sigma_1,sigma_2,-Beta)

// wrong answers were given in textbook for part (b)

