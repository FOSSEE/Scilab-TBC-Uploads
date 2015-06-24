clc
//initialization of new variables
clear
Ue=5 //m/s  Velocity
Ae=20 //cm^2  Area
dp=0   // Pressure difference
rho=1000 //kg/m^3    density
//calculations
Ae=Ae*10^-4
Fx=rho*Ue^2*Ae
//result
printf('The force on the water pipe is %d N',Fx)
