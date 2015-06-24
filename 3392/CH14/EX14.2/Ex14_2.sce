clc
// initialization of variables
clear
S_u=420 //MPa
SF=4.00
D=110 //mm
d=50.0 //mm
w=20 //mm
rho=10.0 //mm
SF=4.0
//calculations
t=(D-d)/2
tr=t/rho
rd=rho/d
S_cs=1+2*sqrt(tr)
A=w*d
Pf=S_u*A/1.83
P=Pf/SF
printf('P = %.1f kN',P/10^3)

