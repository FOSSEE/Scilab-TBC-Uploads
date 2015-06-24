clc
//initialization of new variables
clear
d=4 //m  Diameter
h=10 //m  depth
th=60 //degrees  Wall inclination
rho=1000 //kg/m^3  density
g=9.8 //m/s^2  Accelaration due to gravity
//calculations
p=rho*g*h
th=th*%pi/180
R=d/2
S=%pi*R^2
Fz=-p*S
Y=%pi*R^4/(4*h*%pi*R^2/sin(th))
M=Fz*Y
//result
printf('Hydrostatic force = %.2e N',Fz)
printf('\n Y coordinate of center of pressure with respect to centroid is %.4f m',Y)
printf('\n The moment required to open it is %.2e Nm',-M)
