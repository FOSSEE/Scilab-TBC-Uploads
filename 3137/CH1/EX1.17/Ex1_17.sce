Px=2.85 //ft
Py=4.67 //ft
Pz=-8.09 //ft
Qx=28.3 //lb
Qy=44.6 //lb
Qz=53.3 //lb
//Calculations
X=(Py*Qz-Pz*Qy) //N.m 
Y=(Pz*Qx-Px*Qz) //N.m
Z=(Px*Qy-Py*Qx) //N.m
//Result
clc
printf('The cross product is:%fi%fj%fk lb-ft',X,Y,Z) //lb-ft
