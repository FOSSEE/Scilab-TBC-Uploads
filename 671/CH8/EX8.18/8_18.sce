f=50
N1=500

Pin=60
Io=0.4
Vin=220
r=0.8

Pci=Io*Io*r
Pi=Pin-Pci
disp(Pi)
theta=acos(Pin/Vin/Io)
Im=Io*sin(theta)
Xm=Vin/Im
disp(Xm)
Iio=Io*cos(theta)
Ri=Vin/Iio
disp(Ri)
