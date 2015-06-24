clc
//initialization of new variables
clear
gama=5 //m^2/s
x0=1
y0=1 //(x0,y0) location of source
x=0
y=-1
//calculations
w=-gama/(2*%pi)*(x-x0)/((x-x0)^2+(y-y0)^2)
u=gama/(2*%pi)*(y-y0)/((x-x0)^2+(y-y0)^2)
//results
printf('u = %.3f m/s',u)
printf('\n w = %.3f m/s',w)
x=3
y=0
//calculations
w=-gama/(2*%pi)*(x-x0)/((x-x0)^2+(y-y0)^2)
u=gama/(2*%pi)*(y-y0)/((x-x0)^2+(y-y0)^2)
//results
printf('\n for the second point')
printf('\n u = %.3f m/s',u)
printf('\n w = %.3f m/s',w)
