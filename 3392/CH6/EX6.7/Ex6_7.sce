clc
// initialization of variables
clear
// Flange specifications
T=5000 //Nm
b_f=266 //mm
d=779 //mm
t_w=16.5 //mm
t_f=30 //mm
G=200 // GPa
// calculations
b_f=b_f*10^-3
d=d*10^-3
t_w=t_w*10^-3
t_f=t_f*10^-3
G=G*10^9
//calculations
k1=0.308 // flange (b/h)<10
Jf=2*k1*b_f*t_f^3
k1=0.333 // web (b/h)>10
Jw=k1*(d-2*t_f)*t_w^3
J=Jf+Jw
// part (a)
hmax=0.015
tau_max=2*T*hmax/J
printf('part (a)\n')
printf(' Maximum shear stress is = %.2f MPa',tau_max/10^6)
// part (b)
th=T/(G*J)
printf('\n part (b)')
printf(' \n The angle of twist per unit length is = %.5f rad/m',th)
