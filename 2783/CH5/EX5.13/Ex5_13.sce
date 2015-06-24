clc
//initialization of new variables
clear
z=0.8 //m
b=1 //m
th=60 //degrees
n=0.012
phi=0.3 //degrees
//calculations
th=th*%pi/180
phi=phi*%pi/180
S=(1+z/tan(th))*z
Ph=1+2*z/sin(th)
Rh=S/Ph
Uav=1/n*Rh^(2/3)*sqrt(tan(phi))
Q=Uav*S
//results
printf('Average velocity is %.2f m/s',Uav)
printf('\n Flow rate = %.2f m^3/s',Q)
