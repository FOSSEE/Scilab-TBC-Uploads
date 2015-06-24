clc
v1=200                   //Assigning values to parameters
i0=0.7
w=70
k=400/200
t=acosd(w/(v1*i0))
iw=i0*cosd(t)
iu=i0*sind(t)
r0=v1/iw
x0=v1/iu
vsc=15
i2=10
w=85
r02=w/(i2*i2)
z02=vsc/i2
x02=sqrt(z02*z02-r02*r02)
r01=r02/(k*k)
x01=x02/(k*k)
e2=400
i2=5*1000/(0.8*e2)
v2=e2-i2*r02*cosd(t)-i2*x02*sind(t)
disp("Volts",v2,"The secondary Voltage is")