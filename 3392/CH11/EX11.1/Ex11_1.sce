clc
// initialization of variables
clear
E=200 //GPa
v=0.29
Di=20 //mm
Do=100 //mm
a=10 //mm
b=50 //mm
p1=300 //MPa
//calculations
// S_rr=p1*(a^2*(r^2-b^2))/(r^2*(b^2-a^2))
// S_th=p1*(a^2*(r^2+b^2))/(r^2*(b^2-a^2))
r=10
S_rr=p1*(a^2*(r^2-b^2))/(r^2*(b^2-a^2))
S_th=p1*(a^2*(r^2+b^2))/(r^2*(b^2-a^2))
printf('r = %d mm',r)
printf('\n Radial stress = %.1f MPa',S_rr)
printf('\n circumferential stress = %.1f MPa',S_th)
r=25
S_rr=p1*(a^2*(r^2-b^2))/(r^2*(b^2-a^2))
S_th=p1*(a^2*(r^2+b^2))/(r^2*(b^2-a^2))
printf('\n r = %d mm',r)
printf('\n Radial stress = %.1f MPa',S_rr)
printf('\n circumferential stress = %.1f MPa',S_th)
r=50
S_rr=p1*(a^2*(r^2-b^2))/(r^2*(b^2-a^2))
S_th=p1*(a^2*(r^2+b^2))/(r^2*(b^2-a^2))
printf('\n r = %d mm',r)
printf('\n Radial stress = %.1f MPa',S_rr)
printf('\n circumferential stress = %.1f MPa',S_th)
