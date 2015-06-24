clc
clear
n=4//Four cylinder engine
d=0.1//Diameter of piston in m
l=0.15//Stroke in m
RPM=1600//Speed in r.p.m
ap=(5.76*10^-4)//Area of positive loop of indicator diagram in sq.m
an=(0.26*10^-4)//Area of negative loop of indicator diagram in sq.m
L=0.055//Length of the indicator diagram in m
k=(3.5/10^-6)//Spring constant in kg/m^2 per m

//Calculations
NA=(ap-an)//Net area of the indicator diagram in sq.m
h=(NA/L)//Average height of diagram in m
Pm=(h*k)//Mean effective pressure in kg/m^2
IHP=(Pm*l*(3.14/4)*d^2*RPM*n)/4500//Indicated Horse Power

//Output
printf('Indicated horse power of a four cylinder two stroke petrol engine is %3.1f',IHP)
