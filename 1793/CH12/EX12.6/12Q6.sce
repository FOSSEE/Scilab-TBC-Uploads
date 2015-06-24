clc
T3=12
Tf=9.1
T1=T3+Tf
u=6.8
a= asind((T1-T3)/(T1+T3))

a1= asind((T1-T3)/(T1+T3-2*u))

printf('a)Consolidated-undrained angle of shearing resistance = %f degrees\n',a)
printf(' b)Drained friction angle = %f degrees',a1)
