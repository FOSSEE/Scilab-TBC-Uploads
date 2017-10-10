clc
//initialisation of variables
p=15*10^5//N/m^2
v=78.5*10^-4//m^2
v1=1000//N.s^2/m^4
v2=0.07//m^3/s
x=8.49//m/s
q=1-0.5//m
a=60//deg
p1=4000//min
p2=10//cm
y=0.866//m
//CALCULATIONS
Fx=[(p*v)+((v1)*(v2)*x)]*(q)*0.001//kN
Fy=[(p*v)+((v1)*v2*x)]*y*0.001//N
FR=sqrt(Fx)^2+(Fy)^2//kN
F=Fy/Fx//deg
//RESULTS
printf('The magnitude and direction of the force exerted on the bend is=% f deg',F)
