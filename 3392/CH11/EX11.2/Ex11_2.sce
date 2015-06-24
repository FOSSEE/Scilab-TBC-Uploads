clc
// initialization of variables
clear
E=72 //GPa
v=0.33
Di=200 //mm
Do=800 //mm
a=100 //mm
r=a
b=Do/2 //mm
p1=150 //MPa
E=E*10^3
S_rr=p1*(a^2*(r^2-b^2))/(r^2*(b^2-a^2))
S_th=p1*(a^2*(r^2+b^2))/(r^2*(b^2-a^2))
S_zz=p1*a^2/(b^2-a^2)
tau_max=(S_th-S_rr)/2
u_a=p1*a/(E*(b^2-a^2))*((1-2*v)*a^2+(1+v)*b^2)
printf('Radial stress = %.1f MPa',S_rr)
printf('\n circumferential stress = %.1f MPa',S_th)
printf('\n Normal stress = %d MPa',S_zz)
printf('\n Maximum shear stress = %d MPa',tau_max)
printf('\n u|r=a = %.4f mm',u_a)
