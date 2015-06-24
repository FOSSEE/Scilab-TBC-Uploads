clc
// initialization of variables
clear
E=10 //GPa
h=200 //mm
b=100 //mm
ko=0.04 //N/mm^3
w=35 //N/mm
L1=3.61 //m
//calculations
E=E*10^3
L1=L1*10^3
k=b*ko
Ix=b*h^3/12
Beta=(k/(4*E*Ix))^(1/4)
ba=2.00 // ba = Beta*a  based on the discussion
//D_bz=exp(-Beta*z)*sin(Beta*z)
D_ba=exp(-ba)*cos(ba)
y_max=w/k*(1-D_ba)
ba=0.777 //Beta*a
bb=4.777 //Beta*b
B_ba=exp(-ba)*sin(ba)
B_bb=exp(-bb)*sin(bb)
M_max=abs(-w*(B_ba-B_bb)/(4*Beta^2))
c=h/2
S_max=M_max*c/Ix
// calculation of M_H
ba=%pi/4 //Beta*a
bb=4-%pi/4 //Beta*b
B_ba=exp(-ba)*sin(ba)
B_bb=exp(-bb)*sin(bb)
M_H=w/(4*Beta^2)*(B_ba+B_bb)
printf('y_max = %.3f mm',y_max)
printf('\n M_max = %.3f kN.m',M_max/10^6)
printf('\n S_max = %.3f MPa',S_max)
printf('\n M_H = %.3f kN.m',M_H/10^6)
