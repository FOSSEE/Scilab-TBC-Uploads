clc
// initialization of variables
clear
// Specifications
T=2 //kN.m
E=72 // G Pa
G=27 // GPa
b=30 //mm
h=40 //mm
d=60 //mm
l1=400 //mm
l2=800 //mm
// calculations
E=E*10^9
G=G*10^9
b=b*10^-3
h=h*10^-3
d=d*10^-3
l1=l1*10^-3
l2=l2*10^-3
T=T*10^3 //N.m
Ix=b*h^3/12
J=%pi*d^4/32
thB= 2*l1^3/3*0.001^2*T/(E*Ix)+T*l2/(G*J)
printf('The rotation of shaft B is th = %.3f rad',thB)
// Wrong answer to an extent in the textbook
