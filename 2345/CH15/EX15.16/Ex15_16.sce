//Finding resistance
//Example 15.16(pg. 402)
clc
clear
RHOo=10.3*(10^-6)//resistivity of platinum wire at 0 degree in ohm-cm
d=0.0074//diameter of platinum wire
a=%pi*(d^2)/4//area of cross section of platinum wire in sq cm
Ro=4//resistance of wire in ohm
l=Ro*a/RHOo//length of wire in cm
alphao=0.0038
t=100//temp in degree C
R100=Ro*(1+(alphao*t))
printf('Thus length of wire required is %3.2f cms\n',l)
printf('and Resistance of wire at 100 degreeC is %2.2f ohms',R100)
