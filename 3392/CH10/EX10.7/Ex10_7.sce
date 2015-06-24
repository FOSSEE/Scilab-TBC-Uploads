clc
// initialization of variables
clear
D=30 //m
t=10 //m
h=20 //mm
E=200 //GPa
v=0.29
rho=900 //kg/m^3
//calculations
//part (a)
E=E*10^3
a=D/2*10^3
p=t*10^3*9.807*rho*10^-9
S_th=p*a/h
tau_max=S_th/2
printf('part (a)')
printf('\n Maximum shear stress= %.2f MPa',tau_max)
// part (b)
k=E*h/(a^2)
Beta=(3*(1-v^2)/(h^2*a^2))^(1/4)
L1=3*%pi/(4*Beta) //L1=L/2
u=S_th*a/E
w=2*k*u/(Beta)
M_max=w/(4*Beta)
Szz_max=M_max*(h/2)/(h^3/12)
Sth_max=v*Szz_max
tau_max=Szz_max/2
u_b=w*(1-v)*a/(2*E*h)
printf('\n part (b)')
printf('\n Maximum shear stress= %.2f MPa',tau_max)
printf('\n u_bottom = %.3f mm',u_b)
// part (c)
w=u*k/(2*Beta)
z=%pi/(4*Beta)
B_bz=exp(-Beta*z)*sin(Beta*z)
M_max=-w*B_bz/Beta
c=6
I=h^2
Szz_max=(M_max*c/I)
S_th1=v*(Szz_max)
k=0.3224
S_th2=(1-k)*S_th
Sigma_th=S_th1+S_th2
tau_max=(Sigma_th-Szz_max)/2
printf('\n part (c)')
printf('\n Maximum shear stress= %.2f MPa',tau_max)

