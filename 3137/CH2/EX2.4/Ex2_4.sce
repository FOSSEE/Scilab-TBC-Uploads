//Initilization of variables
Fx=68.7 //N
Fy=22.9 //N
Fz=-68.7 //N
rx=2 //m
ry=0 //m
rz=4 //m
rx1=5 //m
ry1=1 //m
rz1=1 //m
//Calculation
Mx=Fz*ry-Fy*rz //N-m
My=-(Fz*rx-Fx*rz) //N-m
Mz=Fy*rx-Fx*ry //N-m
Mx1=Fz*ry1-Fy*rz1 //N-m
My1=-(Fz*rx1-Fx*rz1) //N-m
Mz1=Fy*rx1-Fx*ry1 //N-m
//Result
clc
printf('Moment with respect to origin using point(2,0,4):%fi+%fj+%fk N.m\n',Mx,My,Mz) //N-m
printf('Moment with respect to origin using point (5,1,1):%fi+%fj+%fk N.m \n',Mx1,My1,Mz1) //N-m
