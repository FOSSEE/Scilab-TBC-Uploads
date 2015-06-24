clc
//Initialization of variables
v=180 //m/s
angle=40 //degrees
a=4 //m/s^2
r=2600 //m
g=9.81 //m/s^2
//calculations
//Assume outward and right as positive
an=-v*v/r
at=-a
ax=at*cosd(angle) +an*sind(angle)
az=at*sind(angle) -an*cosd(angle)
tangent=ax/(az+g)
theta=atand(tangent)
//Results
printf('Angle made by the free liquid = %.2f degrees',-theta)
