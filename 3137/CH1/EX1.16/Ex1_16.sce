//Initilization of variables
x1=2 //units
x2=5 //units
y1=-5 //units
y2=2 //units
z1=3 //units
z2=-4 //units
P=[10,-8,14] //units
//Calculations
X=sqrt((x2-x1)^2+(y2-y1)^2+(z2-z1)^2) //units
eLx=(x2-x1)/X //units
eLy=(y2-y1)/X //units
eLz=(z2-z1)/X //units
Q=[eLx,eLy,eLz] //units
Z=P*Q' //units
//Result
clc
printf('The unit vector is:%fi+%fj%fk \n',eLx,eLy,eLz) 
printf('The projection of P is:%f lb',Z) //lb
