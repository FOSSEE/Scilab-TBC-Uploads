//Initilization of variables
P_x=22 //N
P_y=23 //N
P_z=7 //N
p1=1 //m
p2=-1 //m
p3=-2 //m
//Calculations
Mx=(p2*P_z)-(p3*P_y) //N-m
My=-((p1*P_z)-(p3*P_x)) //N-m
Mz=(p1*P_y)-(p2*P_x) //N-m
//Result
clc
printf('The moment about the line from the origin is:%fi%fj+%fk N.m',Mx,My,Mz) //N-m
