//Finding resistance
//Example 15.38(pg. 417)
clc
clear
//(a)Finding resistance between 2 ends
l=1//length in m
a=2.5*(10^-2)*0.05*(10^-2)//area of cross section in m^2
rho=1.724*(10^-8)//specific resistance of copper in ohm-m
R=rho*l/a//resistance of the strip in ohm
//(b) Finding resistance between 2 faces
l1=0.05*(10^-2)//length in m
a1=2.5*(10^-2)*1//area of cross section in m^2
R1=rho*l1/a1//resistance in ohm
printf('Thus the resistance of the strip is %e ohms\n ',R)
printf('And the resistance between the faces is %e ohms',R1)
