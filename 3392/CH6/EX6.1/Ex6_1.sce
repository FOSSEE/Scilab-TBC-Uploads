clc
// initialization of variables
clear
// part (a)
a=22 //mm
b=25 //mm
T=500 //N m
// calculations
a=a*10^-3
b=b*10^-3
J=%pi*(b^4-a^4)/2
tau_max=T*b/J
printf(' part (a) \n')
printf(' Maximum shear stress in shaft = %.1f M Pa ',tau_max/10^6)
// part (b)
G=77 //GPa
G=G*10^9
th=T/(G*J)
printf('\n part (b)')
printf('\n The angle of twist per unit length is = %.4f rad/m',th)
