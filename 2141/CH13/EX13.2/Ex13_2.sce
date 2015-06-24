
clc
//initialisation of variables
Pn=19.71//lbf/in^2
Po=4.36 //lbf/in^2
y=14.7//lbm
x=2.37/3.52//lbf/in^2
X=3.37//lbf/in^2
Pc=492//lbf/in^2
T=126.2//K
t=80//K
Tc=154.8//k
Pcb=736//lbf/in^2
FB=0.965//lbf/in^2
Tr=t/T//lbf/in^2
Pr=Pn/Pc//lbf/in^2
fA=0.95 //lbf/in^2
fB=fA*Pn//lbf/in^2
PrA=y/Pc//lbf/in^2
FA=0.96//lbf/in^2
Fa1=FA*y//lbf/in^2
TrB=t/Tc//lbf/in^2
Pr1=Po/Pcb//lbf/in^2
fB1=0.99*4.36//lbf/in^2
XA1=0.681//lbf/in^2
//CALCULATIONS
Xa=Pn/y//lbf/in^2
Xb=Po/y//lbf/in^2
YA=Xa*x//lbf/in^2
FBv=FB*y//lbf/in^2
//RESULTS
printf('the raoults rule=% f lbf/in^2',YA)
printf('the ideal solution in both phase=% flbf/in^2',FBv)
