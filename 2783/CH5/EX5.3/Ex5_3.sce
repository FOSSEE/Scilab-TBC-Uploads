clc
//initialization of new variables
clear
Uav=1 //m/s
h=1 //cm
mu=0.001
rho=1000 //kg/m^3
//calculations
h=h*10^-2
Umax=1.5*Uav
Dp=-12*mu*Uav/h^2
tau=-h/2*Dp
Re=rho*Uav*h/mu
Cf=12/Re
//results
printf('Max velocity = %.2f m/s ',Umax)
printf('\n Pressure gradient = %.2f N/m^3',Dp)
printf('\n shear = %.1f N',tau)
printf('\n friction coefficient = %.2e ',Cf)
