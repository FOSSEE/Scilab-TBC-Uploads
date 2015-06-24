clc
// initialization of variables
clear
G=26 //GPa
tau_max=40.0 //MPa
t1=4.5 //mm
t3=1.5 //mm
t2=3 //mm
l1=3*60 //mm
l3=60 //mm
r2=30 //mm

//calculations
// 1 indicates coefficient of q1
// 2 indicates coefficient of q2

l2=r2*%pi
G=G*10^3
A1=l3^2
A2=%pi*r2^2/2
T1=2*A1
T2=2*A2
tha1=l1/t1+l3/t3
tha1=tha1/(2*G*A1)
tha2=-l3/t3
tha2=tha2/(2*G*A1)
thb1=-l3/t3
thb1=thb1/(2*G*A2)
thb2=l2/t2+l3/t3
thb2=thb2/(2*G*A2)
// Since tha=thb
Qr=(thb2-tha2)/(tha1-thb1)
printf('q1/q2 = %.3f ',Qr)
q2=tau_max*t2
q1=Qr*q2
qdif=q1-q2
tau_1=q1/t1
tau_2=q2/t2
tau_3=qdif/t3
T=2*A1*q1+2*A2*q2
th=tha1*q1+tha2*q2
printf('\n T = %.3f kN.m',T/10^6)
printf('\n theta = %.4f rad/m',th*10^3)
