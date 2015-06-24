//Initilization of variables
x1=2 //units
x2=-2 //units
y1=3 //units
y2=4 //units
z1=0 //units
z2=6 //units
P=[2,3,-1] //units
//Calculations
X=sqrt((x2-x1)^2+(y2-y1)^2+(z2-z1)^2) //units
eLx=(x2-x1)/X //units
eLy=(y2-y1)/X //units
eLz=(z2-z1)/X //units
Q=[eLx,eLy,eLz] //units
Z=P*Q' //units
//Result
clc
printf('The unit vector is:%fi+%fj+%fk \n',eLx,eLy,eLz)
printf('The projection of P is:%f',Z)
//Note:The final answer for the projection of P is off by 0.1 units
//The answer mentioned in the textbook is -1.41
