//Initilization of variables
A=80 //N
B=120 //N
C=100 //N
D=50 //N
thetaA=((90*%pi)/180) //radians
thetaB=((150*%pi)/180) //radians
thetaC=((45*%pi)/180) //radians
thetaD=((340*%pi)/180) //radians
//Calculations
Ax=A*cos(thetaA) //N
Ay=A*sin(thetaA) //N
Bx=B*cos(thetaB) //N
By=B*sin(thetaB) //N
Cx=C*cos(thetaC) //N
Cy=C*sin(thetaC) //N
Dx=D*cos(thetaD) //N
Dy=D*sin(thetaD) //N
M_Ax=0 //N-m
M_Ay=0 //N-m
M_Bx=-Bx*5 //N-m
M_By=By*8 //N-m
M_Cx=-Cx*1 //N-m
M_Cy=Cy*1 //N-m
M_Dx=-Dx*-1 //N-m
M_Dy=Dy*8 //N-m
Fx=Ax+Bx+Cx+Dx //N
Fy=Ay+By+Cy+Dy //N
R=sqrt(Fx^2+Fy^2) //N
M_O=M_Dx+M_Dy+M_Cx+M_Cy+M_Bx+M_By+M_Ax+M_Ay //N-m
theta=atan(Fy/Fx) //radians
theta_x=(theta*180)/%pi //degrees
//Appliying Varignons theorem
x=M_O/R //m
//Result
clc
printf('The resultant of the force system is:%f N\n',R) //N
printf('The moment about point O is:%f N\n',M_O) //N
printf('The resultant acts at and angle of %f degrees with respect to X-Axis degrees\n',theta_x) //degrees
printf('The resultant of the force system acts at %f meters from point O',x) //m
