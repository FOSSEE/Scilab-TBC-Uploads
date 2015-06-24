clc
//initialization of new variables
clear
mu=1 //m^3/s
x0=0
z0=0
x=1
z=0
//calculations
u=mu/(2*%pi)*((x-x0)^2-(z-z0)^2)/((x-x0)^2+(z-z0)^2)^2
w=mu/(2*%pi)*2*(x-x0)*(z-z0)/((x-x0)^2+(z-z0)^2)^2
//results
printf('u = %.2f m/s',u)
printf('\n w = %.2f m/s',w)
