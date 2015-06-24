//Finding length
//Example 2.4(pg. 22)
clc
clear
//Part (a)
d=0.4*(10^-3)//diameter in meter
a=%pi*(d^2)/4//area in meter square
p1=100*(10^-8)//resistivity of nichrome in ohm-meter
R=40//resistance in ohms
l1=R*a/p1
printf('Thus the length of heater element with nichrome wire is %2.1f meter \n',l1)

//Part(b)
d=0.4*(10^-3)//diameter in meter
a=12.6*(10^-8)//area in meter square
p2=1.72*(10^-8)//resistance of copper wire in ohm-meter
R=40//resistance in ohms
l2=R*a/p2
printf('Thus the length of heater element with copper wire is %2.1f meter',l2)

