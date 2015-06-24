clc
// initialization of variables
clear
//part(a)
E=200 //GPa
d=184 //mm
c=99.1 //mm
Ix=36.9e+06//mm^4
k=14.0 //N/mm^2
P=170 //kN
//calculations
E=E*10^3
P=P*10^3
Beta=(k/(4*E*Ix))^(1/4)
y_max=P*Beta/(2*k)
M_max=P/(4*Beta)
S_max=M_max*c/Ix
printf('part (a)')
printf('\n y_max = %.3f mm',y_max)
printf('\n M_max = %.2f kN.m',M_max/10^6)
printf('\n S_max = %.1f MPa',S_max)
// part (b)
z1=1.7//m
z1=z1*10^3 //mm
z2=2*z1
// A_bz=exp(-Beta*z)*(sin(Beta*z)+cos(Beta*z))
// C_bz=exp(-Beta*z)*(-sin(Beta*z)+cos(Beta*z))
A_bzo=1
C_bzo=1
A_bz1=exp(-Beta*z1)*(sin(Beta*z1)+cos(Beta*z1))
A_bz2=exp(-Beta*z2)*(sin(Beta*z2)+cos(Beta*z2))
C_bz1=exp(-Beta*z1)*(-sin(Beta*z1)+cos(Beta*z1))
C_bz2=exp(-Beta*z2)*(-sin(Beta*z2)+cos(Beta*z2))
y_end=P*Beta/(2*k)*(A_bzo+A_bz1+A_bz2)
M_end=P/(4*Beta)*(C_bzo+C_bz1+C_bz2)
y_center=P*Beta/(2*k)*(A_bzo+2*A_bz1)
M_center=P/(4*Beta)*(C_bzo+2*C_bz1)
y_max=max(y_end,y_center)
M_max=max(M_end,M_center)
S_max=M_max*c/Ix
printf('\n part(b)')
printf('\n y_max = %.3f mm',y_max)
printf('\n M_max = %.2f kN.m',M_max/10^6)
printf('\n S_max = %.1f MPa',S_max)
