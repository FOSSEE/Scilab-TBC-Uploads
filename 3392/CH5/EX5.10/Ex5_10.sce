clc
// initialization of variables
clear
// part (b)
// Specifications
P=150 //N
R=200 //mm
d=20 //mm
E=200 //GPa
G=77.5 //GPa
//calculations
R=R*10^-3
d=d*10^-3
E=E*10^9
G=G*10^9
r1=R+d/2
r2=R-d/2
A=314*10^-6 
I=7850*10^-12 //m^4
Ax=3*%pi/4*P*R/(E*A)
Sh=3*%pi/4*1.33*P*R/(G*A)
M=(7*%pi/4+1)*P*R^3/(E*I)
//qc=3*%pi/4*P*R/(E*A)+3*%pi/4*1.33*P*R/(G*A)+(7*%pi/4+1)*P*R^3/(E*I)
qc=Ax+Sh+M
printf('qc = %.2f mm among which due to Axial is %.4f mm, %.4f mm is due to shear, and %.4f mm is due to moment',qc*10^3,Ax*10^3,Sh*10^3,M*10^3)
printf('\n which means The concentrations of axial loads and shear are negligible')
