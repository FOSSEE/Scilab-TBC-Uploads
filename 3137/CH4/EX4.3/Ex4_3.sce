//Initilization of variables
F=[100;50;-150] //Force vector N
a=2 //m
b=2 //m 
c=3 //m
d=2 //m
e=4 //m
f=8 //m
//Calculations
R=F(1,1)+F(2,1)+F(3,1) //N
M_x=-F(1,1)*a+F(2,1)*b-F(3,1)*c //N-m
M_z=F(1,1)*d+F(2,1)*e+F(3,1)*f //N-m
C=sqrt(M_x^2+M_z^2) //N-m
thetax=atand(-M_x/M_z) //degrees
//result
clc
printf('The resultant is %f N \n',R)
printf('The moment about x axis is %f N.m \n',M_x)
printf('The moment about z axis is %f N.m\n',M_z)
printf('The couple acting is %f N.m\n',C)
printf('The trace makes an angle with x axis of %f degrees',thetax)
