clc
// initialization of variables
clear
// specification
R=65 //mm
E=200 //GPa
G=77.5 //GPa
v=0.29
P=6 //kN
//calculations
R=R*10^-3
E=E*10^9
G=G*10^9
P=P*10^3
A=30^2*10^-6
I=30^4/12*10^-12
q_p1=3*%pi*P*R/(4*E*A)+1.2*3*%pi*P*R/(4*G*A)+(9*%pi/4+2)*P*R^3/(E*I)
printf('part (a)')
printf('\n qp = %.4f mm',q_p1*10^3)
//part (b)
// if Un and Us are neglected
q_p2=(9*%pi/4+2)*P*R^3/(E*I)
e=(q_p1-q_p2)/q_p1*100
printf('\n part (b)')
printf('\n error = %.2f per cent',e)

