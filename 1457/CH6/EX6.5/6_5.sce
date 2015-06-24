clc
//Initialization of variables
omega=300 //rpm
r1=1.6 //ft
Q=120 //cfs
z=0.8 //ft
beta1=80 //degrees
r2=1 //ft
rho=1.94
g=32.2
gam=62.4
//calculations
disp("part a")
u1=(2*%pi/60)*omega*r1
Vr1=Q/(2*%pi*r1*z)
v1=Vr1/sind(beta1)
v2c=v1*cosd(beta1)
V1c=u1+v2c
u2=(2*%pi/60)*omega*r2
Vr2=Vr1*(r1/r2)
beta2=atand(Vr2/u2)
printf("required Blade angle = %.1f degrees",180-beta2)
disp("part b")
T=rho*Q*(r1*V1c)
power=T*u2
printf("Torque exerted = %d ft lb/s",power)
disp("part c")
h2=u1*V1c/g
Power=gam*Q*h2
printf("Torque exerted = %d ft lb/s",Power)
