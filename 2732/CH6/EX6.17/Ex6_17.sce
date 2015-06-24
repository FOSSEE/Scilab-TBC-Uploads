clc
//initialization of variables
clear

yp=2450 //kg/cm^2
d=0.4 //cm
ys=4200 //kg/cm^2
sa=1.6 //mm
sb=7 //mm
// calculations
sa=sa/10
sb=sb/10
T1=yp*%pi*d^3/16
T2=ys*0.303*sa^2*sb
// results
printf('The maximum torque that can be transitted by the screw-driver is %.1f kg-cm',T2)

