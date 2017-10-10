clc
x=23.9
y=8.34
x1=0.05
y1=0.005
ex=0.025
ey=0.0025

s1= x1/y + x*y1/y^2

es= (x/y)*sqrt((ex/x)^2 + (ey/y)^2)

sn2= x/y + es
sn3= x/y - es

printf('The maximum error =%f\n',s1)
printf(' Hence the most probable error = +/- %f\n',es)
printf(' The most probable limits of quantity s are %f',sn2)
printf(' and %f\n',sn3)
