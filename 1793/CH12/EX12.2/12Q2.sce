clc
T3=16 // lb/in^2
Tf=25 // lb/in^2
T1=T3+Tf
a= asind((T1-T3)/(T1+T3)) // Mohr's circle
printf('a)Angle of friction,a = %f\n',a)
b= 45+ a/2
printf(' b)Angle b that the failure plane makes with the major principal plane = %f',b)

