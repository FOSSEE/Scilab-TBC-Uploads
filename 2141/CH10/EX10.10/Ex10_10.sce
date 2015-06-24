

clc
//initialisation of variables
clear
Pc=708//lbf/in^2
T=549.8//R
P=14.7//lbf/in^2
Pr1=P/Pc//lbf/in^2
Tr1=T/549.8 //F
T=570//F
P2=1000//lbf/in^2
Pr2=P2/Pc//lbf/in^2
h=124.8//Btu/lbm
f1=0.58//lbf/in^2
f2=1.0//lbf/in^2
F1=P2*f1//lbf/in^2
F2=P*f2//lbf/in^2
w=(1.986/30)*T*log(F1/F2)//Btu/lbm
q=-124.8 //lbf/in^2
//CALCULATIONS
Q=q-w//btu/lbm
S=Q/T//Btu/lbm-R
//RESULTS
printf('The work of compression and the heat transfer per pound ethane=% f Btu/lbm-R',S)
