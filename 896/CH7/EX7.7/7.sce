clc
//Example 7.7
//Calculate the support forces in x and y direction in a 90 degree bend tube
p1=200//KPa
A=0.1//m^2
m=500//Kg/s
rho=998.2//Kg/m^3
q=m/rho//m^3/s
v=q/A//m/s
Vx_initial=v//m/s
Vx_final=0//m/s
Vy_initial=0//m/s
Vy_final=-v//m/s
Fx=m*(Vx_final-Vx_initial)-p1*1000*A//N
printf("The support force in the x direction is %f N\n",Fx);
Fy=m*(Vy_final-Vy_initial)-p1*1000*A//N
printf("The support force in the y direction is %f N",Fy);