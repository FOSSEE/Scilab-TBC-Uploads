//Initilization of variables
F=[20;-10;30] //N
//co-ordinates in meters
a=2 //m
b=4 //m
c=7 //m
d=3 //m
e=2 //m
f=4 //m
//Calculations
R=F(1,1)+F(2,1)+F(3,1) //N
M_o=F(1,1)*a+F(2,1)*b+F(3,1)*c //N-m
x=M_o/R //m
M_x=-F(3,1)*e-F(1,1)*d+F(2,1)*f //N-m
z=-M_x/R //m
//Result
clc
printf('The resultant is %f N \n',R)
printf('The moment about point O is %f N-m \n',M_o)
printf('The position of R is at %f from origin m \n',x)
printf('The moment is %f N-m\n',M_x)
printf('The z co-ordinate is %f m',z)
