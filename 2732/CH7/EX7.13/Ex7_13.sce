clc
//initialization of variables
clear
p=6 //mm
Ixx=2375 //cm^4
Es=2*10^6 //kg/cm^2
EAl=0.667*10^6 //kg/cm^2
d1=10.6 //cm
d2=10 //cm
// calculations
I1=2*(0+p/10*10*10.3^2)
I2=Ixx*EAl/Es
I=I1+I2
n=I/I2
// results
printf('stiffness ratio = %.2f ',n)
n1=Es*d1/(d2*EAl)
printf('\n Stress ration = %.2f ',n1)
