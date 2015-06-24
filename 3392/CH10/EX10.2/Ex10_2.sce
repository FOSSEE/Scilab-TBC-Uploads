clc
// initialization of variables
clear
d=100 //mm
Ix=2.45e+06 //mm^4
E=72 //GPa
L=6.8 //m
K=110 //N/mm
l=1.1 //m
P=12 //kN
//calculations
E=E*10^3
P=P*10^3
l=l*10^3
k=K/l
L1=7*l
Beta=(k/(4*E*Ix))^(1/4)
if(l<%pi/(4*Beta))
if(L1>3*%pi/(2*Beta))
    y_max=P*Beta/(2*k)
    M_max=P/(4*Beta)
    S_max=M_max*d/(2*Ix)
end
end
printf('y_max = %.3f mm',y_max)
printf('\n M_max = %.2f kN.m',M_max/10^6)
printf('\n S_max = %.1f MPa',S_max)
A_bl=exp(-Beta*l)*(sin(Beta*l)+cos(Beta*l))
A_2bl=exp(-Beta*2*l)*(sin(Beta*2*l)+cos(Beta*2*l))
A_3bl=exp(-Beta*3*l)*(sin(Beta*3*l)+cos(Beta*3*l))
    y_C=P*Beta/(2*k)*A_bl
    y_B=P*Beta/(2*k)*A_2bl
    y_A=P*Beta/(2*k)*A_3bl
printf('\n y_C = %.2f mm',y_C)
printf('\n y_B = %.2f mm',y_B)
printf('\n y_A = %.2f mm',y_A)
