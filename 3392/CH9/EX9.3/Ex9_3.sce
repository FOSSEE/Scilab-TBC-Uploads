clc
// initialization of variables
clear
Y=500 //MPa
SF=2.00
A1=1658.76 //mm^2
R1=73.81 //mm
Am1=22.64 //mm
A2=6100 //mm^2
R2=126.62 //mm
Am2=50.57 //mm
A3=115.27 //mm^2
R3=186.01 //mm
Am3=0.62 //mm
A=A1+A2+A3
Am=Am1+Am2+Am3
R=(A1*R1+A2*R2+A3*R3)/A
rB=60 //mm
rC=rB+24+100+5 //follows from figure
//P unknown, so put unity to solve for it later
P=1
Mx=116.37*P
r=rB
S_thB=P/A+(Mx*(A-r*Am))/(A*r*(R*Am-A))
r=rC
S_thC=P/A+(Mx*(A-r*Am))/(A*r*(R*Am-A))
S_th=max(abs(S_thB),abs(S_thC))
Pf=Y/S_th
P=Pf/SF
printf('P = %.d N',P)
