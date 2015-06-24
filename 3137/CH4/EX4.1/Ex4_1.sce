//Initilization Of Variables
F1=20 //lb
F2=15 //lb
F3=30 //lb
F4=50 //lb
//Co-ordinates of Forces
C1=[2;1;6]
C2=[4;-2;5]
C3=[-3;-2;1]
C4=[5;1;-2]
//Calculations
A=sqrt((C1(1,1))^2+(C1(2,1))^2+(C1(3,1)^2))
B=sqrt((C2(1,1))^2+(C2(2,1))^2+(C2(3,1)^2))
C=sqrt((C3(1,1))^2+(C3(2,1))^2+(C3(3,1)^2))
D=sqrt((C4(1,1))^2+(C4(2,1))^2+(C4(3,1)^2))
//Calculations for cos(thetax),cos(thetay) and cos(thetaz)
theta1=[C1(1,1)/A;C1(2,1)/A;C1(3,1)/A]
theta2=[C2(1,1)/B;C2(2,1)/B;C2(3,1)/B]
theta3=[C3(1,1)/C;C3(2,1)/C;C3(3,1)/C]
theta4=[C4(1,1)/D;C4(2,1)/D;C4(3,1)/D]
//Calculations for forces (in form of force vectors)
Fa=F1*theta1 //lb
Fb=F2*theta2 //lb
Fc=F3*theta3 //lb
Fd=F4*theta4 //lb
Fx=Fa(1,1)+Fb(1,1)+Fc(1,1)+Fd(1,1) //lb
Fy=Fa(2,1)+Fb(2,1)+Fc(2,1)+Fd(2,1) //lb
Fz=Fa(3,1)+Fb(3,1)+Fc(3,1)+Fd(3,1) //lb
R=sqrt(Fx^2+Fy^2+Fz^2) //lb
thetax=acosd(Fx/R) //degrees
thetay=180-acosd(Fy/R) //degrees
thetaz=acosd(Fz/R) //degrees
//Result
clc
printf('The resultant of the force system is %f lb \n',R)
printf('The angle of the resultant with respect to x y and z axes are %f, %f and %f degrees respectively',thetax,thetay,thetaz)
