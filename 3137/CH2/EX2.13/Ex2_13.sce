//Initilization of variables
rx=20 //in
ry=0 //in
rz=14 //in
Fx=0 //lb
Fy=-25 //lb
Fz=0 //lb
//Calculation
Mx=ry*Fz-rz*Fy //lb-in
My=rx*Fz-rz*Fx //lb-in
Mz=rx*Fy-ry*Fx //lb-in
//Result
clc
printf('The moment of the 25-lb force is:%fi+%fj%fk lb.in',Mx,My,Mz) //lb-in


