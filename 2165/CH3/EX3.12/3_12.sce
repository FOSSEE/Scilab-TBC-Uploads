clc
//initialisation of variables
p=120//lb/in^2
ts=264//degree C
T1=(273+130.6)//F
v=0.0171//ft^3/lb
L1=518.4//lb
T2=(273+171.9)//F
L2=487.4//lb
Cp=0.48//lb
L=0.0894/Cp//lb
Ts=T2*1.205//degree
ta=536-273//Degree C
T=649.9//C.H.U
S=131.2//C.H.U
w=(144*40)/1400*(10.49-v)//C.H.U
C=T-S//C.H.U
I=C-w//C.H.U
E=(704.7-57.8)//C.H.U
E1=E-606.5//C.H.U
//CALCULATIONS
E1=E-606.5//C.H.U
H=(704.7-T)//C.H.U
//RESULTS
printf('Heat and internal energy after each operation=% f C.H.U',H)
