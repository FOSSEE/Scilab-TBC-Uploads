clc
// initialization of variables
clear
a=100 //mm
b=300 //mm
Y=620 //MPa
E=200 //GPa
S_zz=0
v=0.29
rho=7.85e+03 //kg/m^3
// part (a)
S_thmax=Y
Wy=sqrt(4*Y/(rho*((3+v)*b^2+(1-v)*a^2)))
printf('part (a)')
printf('\n Omega_y =%d rad/s',Wy*10^6)
// part (b)
Wp=sqrt(3*Y/(rho*(b^2+a*b+a^2)))
ratio=Wp/Wy
printf('\n Omega_p = %d rad/s',Wp*10^6)
printf('\n ratio = %.2f',ratio)
