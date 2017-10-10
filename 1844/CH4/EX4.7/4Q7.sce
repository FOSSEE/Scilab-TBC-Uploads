clc
AC= 250 //in m
AB= 200 // in m
BD=125 // in m
DC= 150 // in m
CB=BD+DC // in m
a= acos( (AC^2+CB^2-AB^2)/(2*AC*CB))
AD=sqrt(AC^2+DC^2-2*AC*DC*cos(a))

printf('AD = %f m',AD)
