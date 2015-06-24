clc
// initialization of variables
clear
d=2 // m
l=10 // m
t=1 // cm
p=15 // kgf/cm^2
pitch= 2*%pi //m
//calculations
w=2*%pi*d/2 // m
theta=atan(w/(2*%pi))
sigma_z=p*d*100/(4*t)
sigma_th=p*d*100/(2*t)
sigma_th_new=(sigma_th+sigma_z)/2+(sigma_th-sigma_z)/2*cos(2*theta)
tau_thz=(sigma_z-sigma_th)*sin(2*theta)/2
// results
printf('At the junction, the normal and shear stresses are %d and %d kgf/cm^2 \n respectively, and the rivets must be designed for this',sigma_th_new,-tau_thz)
