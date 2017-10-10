clc
//initialisation of variables
v1=15//m/s
v2=20//m/s
v3=0.5//m/s
a=60//degree
b=74//deg
c=cosd(c)
//CALCULATIONS
Vx=v2*v3-v1//m/s
Vy=v2*sind(a)//m/s
V=sqrt((Vx)^2+(Vy)^2)//m/s
fhi=-(Vx/Vy)
f=cosd(fhi)//deg
//RESULTS
printf('The magnitude and dirction of the resultant vector=% f deg',f)
