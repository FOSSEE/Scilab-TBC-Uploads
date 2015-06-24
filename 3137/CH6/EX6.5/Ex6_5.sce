//Initilization of variables
m=80 //kg
g=9.81 //m/s^2
//Co-ordinates of points in Meters
A=[1,3,0]
B=[3,3,-4]
C=[4,3,0]
D=[2,0,-1]
//Calculations
//Tension in DC will be
a=[C(1)-D(1),C(2)-D(2),C(3)-D(3)]
h=sqrt((C(1)-D(1))^2+(C(2)-D(2))^2+(C(3)-D(3))^2)
c=a/h
//Unit vector calculations
e=[B(1)-A(1),B(2)-A(2),B(3)-A(3)]
v=sqrt((B(1)-A(1))^2+(B(2)-A(2))^2+(B(3)-A(3))^2)
e_ab=e/v
//Position vector AD
r_ad=[D(1)-A(1),D(2)-A(2),D(3)-A(3)]
//Moment Calculations
O=[1,0,0;1,-3,-1;0,-m*g,0]
P=[0,1,0;1,-3,-1;0,-m*g,0]
Q=[0,0,1;1,-3,-1;0,-m*g,0]
C1=[1,0,0;1,-3,-1;2,3,1]
C2=[0,1,0;1,-3,-1;2,3,1]
C3=[0,0,1;1,-3,-1;2,3,1]
rxF1=[det(O),det(P),det(Q)]
rxF2=[(det(C1)/h),(det(C2)/h),(det(C3)/h)]
//Final Moment calculations
rxF=rxF1+rxF2 
//Taking dot product
dot1=e_ab.*rxF
dot2=e_ab.*rxF2
//equating dot product to zero to obtain C
C=-(dot1(1)+dot1(3))/dot2(3)
//Result
clc
printf('The tension in CD is %f N',C)
