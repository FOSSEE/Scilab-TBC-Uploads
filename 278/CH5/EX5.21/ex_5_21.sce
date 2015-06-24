//find stresses developed at each corner of the pier
clc
//solution
//given
//refer fig 5.23
b=4//m
d=3//m
A=b*d//m^2
P=30//kN
ex=0.5//m
ey=1//m
Ixx=b*d^3/12//m^4
Iyy=d*b^3/12//m^4
x=3/2//m
y=4/2//m
//at A
fa=(P/A)+(P*ex*x/(Ixx))+(P*ey*y/(Iyy))//kN/m^2
//at B
fb=(P/A) +(P*ex*x/(Ixx))-(P*ey*y/(Iyy))//kN/m^2
//at C
fc=(P/A)-(P*ex*x/(Ixx))+(P*ey*y/(Iyy))//kN/m^2
//at D
fd=(P/A)-(P*ex*x/(Ixx))-(P*ey*y/(Iyy))//kN/m^2
printf("the stress at A is,%f N/m^2\n",fa)
printf("the stress at B is,%f N/m^2\n",fb)
printf("the stress at B is,%f N/m^2\n",fc)
printf("the stress at D is ,%f N/m^2",fd)
