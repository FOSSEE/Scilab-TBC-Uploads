clc
k= 8 // slope between points in degrees
l=428 //measured length in m
D1=l*cosd(k)
printf('a)Horizontal distance between the points =%f m\n',D1)

h=62
D2=sqrt(l^2-h^2)
printf(' b)Horizontal distance between the points =%f m\n',D2)

k= atan(0.25)
D3=l*cos(k)
printf(' c)Horizontal distance between the points =%f m',D3)
