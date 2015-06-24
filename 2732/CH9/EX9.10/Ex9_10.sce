clc
//initialization of variables
clear
b=2 //cm
h=2 //cm
T=2000 //kg-cm
V=250 //kg
M=2000 //kg-cm
// calculations
Mmax=M*6/(b*h*b)
Vmax=3*V/(2*b*h)
Zt=0.208*b^2*h
Tmax=T/(Zt)

sigma=Mmax
printf('points A,B,')
printf('\n sigma=%d kg/cm^2 (tension)',sigma)
printf('\n points C,D,')
printf('\n sigma=%d kg/cm^2 (cmpression)',sigma)
tau=Vmax+Tmax
printf('\n point E')
printf('\n tau=%.2f kg/cm^2 shear',tau)
tau=Vmax-Tmax
printf('\n tau=%.2f kg/cm^2 shear',tau)
// at G
sigma_x=sigma
sigma_y=0
tau_xy=Tmax
sigma_1=(sigma_x+sigma_y)/2+sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
sigma_2=(sigma_x+sigma_y)/2-sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
// results
printf('\n at point G')
printf('\n sigma_1 = %d kg/cm^2 (tension)',sigma_1)
printf('\n sigma_2 = %d kg/cm^2 (compression)',sigma_2)

// Question was asked only to find out at A,B,C,D,E,F and G
