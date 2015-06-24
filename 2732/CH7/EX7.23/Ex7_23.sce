clc
//initialization of variables
clear
h=40 //cm
b=10 //cm
t1=1.4 //cm
t2=0.8 //cm
Ixx=13989.5 //cm^4
//calculations
e=b^2*h^2*t1/(4*Ixx)*(1-t1/h-t1/b+t1^2/(b*h))*(1-t1/h)
//Results
printf('Shear center: \n e = %.2f cm',e)
