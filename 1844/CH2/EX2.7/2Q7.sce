clc
x=8.28
y=4.36
x1=0.005
y1=0.005

es=(x1/x)+ (y1/y)
s1= x*y*es
sn2= x*y + s1
sn3=x*y - s1
printf('The maximum error =%f\n',s1)
printf(' The  limits of quantity s are %f sq m',sn2)
printf(' and %f sq m\n ',sn3)

