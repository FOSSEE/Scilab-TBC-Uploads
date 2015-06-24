clc
//initialization of new variables
clear
An=1 //cm^2
Un=15 //m/s
Ub=10 //m/s
U1=5 //m/s
U2=5 //m/s
th=120 //degrees
rho=1000 //kg/m^3
//calculations
th=th*%pi/180
Fx=rho*U1^2*An*10^-4*(cos(th)-1)
Fz=rho*U1^2*An*10^-4*sin(th)
W=Fx*Ub
//results
printf('The forces acting are Fx = %.2f N \n Fz = %.2f N ',Fx,Fz)
printf('\n The power generated is %.1f W',-W)
