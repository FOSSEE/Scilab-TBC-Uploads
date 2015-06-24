clc
//initialization of new variables
clear
u=70 //m/s
a=20 //degrees
b=15 //m
c=25 //m
r=1.2 //kg/m^3
//calculations
AR=b^2/(0.5*b*c)
a=a*%pi/180
Cl=(0.963+1.512*AR)*sin(a)
W=Cl*0.5*r*u^2*(b*c/2)
D=W*tan(a)
//results
printf('Airplane weight is %.1f N',W)
printf('\n Drag is %.1f N',D)
