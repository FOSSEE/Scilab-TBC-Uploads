//Initilization of variables
F=100 //N
x1=2 //m
x2=5 //m
y1=0 //m
y2=1 //m
z1=4 //m
z2=1 //m
//Calculations
xside=(x2-x1) //m
yside=(y2-y1) //m
zside=(z2-z1) //m
LD=sqrt(xside^2+yside^2+zside^2)
Fx=(xside/LD)*F //N
Fy=(yside/LD)*F //N
Fz=(zside/LD)*F //N
Mx=-Fy*z1 //N-m
My=Fx*x1-Fz*z1 //N-m
Mz=Fy*x1 //N-m
//Result
clc
printf('Fx is:%f N\n',Fx) //N
printf('Fy if:%f N\n',Fy) //N
printf('Fz is:%f N\n',Fz) //N
printf('Moment about X-Axis is:%f N.m\n',Mx) //N-m
printf('Moment about Y-Axis is:%f N.m\n',My) //N-m
printf('Moment about Z-Axis is:%f N.m',Mz) //N-m

