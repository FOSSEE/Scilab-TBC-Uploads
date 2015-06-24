clc
// initialization of variables
clear
E=200 //GPa
h=102 //mm
b=68 //mm
Ix=2.53e+06 //mm^4
L1=4 //m
ko=0.35 //N/mm^3
P=30.0 //kN
//calculations
E=E*10^3
P=P*10^3
L1=L1*10^3
k=b*ko
Beta=(k/(4*E*Ix))^(1/4)
if(L1>3*%pi/(2*Beta))
    y_max=2*P*Beta/k
   M_max=-0.3224*P/Beta
   S_max=abs(M_max*h/(2*Ix))
end
z=%pi/(4*Beta)
printf('y_max = %.2f mm',y_max)
printf('\n M_max = %.2f kN.m',M_max/10^6)
printf('\n S_max = %.1f MPa',S_max)
printf('\n Location of Sigma_max is z = %d mm',z) 
    
