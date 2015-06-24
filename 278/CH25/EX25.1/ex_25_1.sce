//find..
clc
//solution
//given
m=1200//kg
s=1/5
v=20//m/s
h=50//m
d=600//mm
r=0.300//m
mb=20//kg
c=520//J/kg/dec C
Ek=(0.5)*m*v^2//N-m
g=9.81//m/s^2
Ep=m*g*h*s//N-m
E=Ep+Ek
Ft=E/50//N
Tb=Ft*r//N-m
printf("torque applied is,%f N-m\n",Tb)
//let dt be average temp rise 
Hg=E
dt=Hg/(mb*c)//deg celcius
printf("average temperature rise is,%f deg celcius\n",dt)
//et u be coefficient of friction
Rn=m*g
u=Ft/(Rn)//
printf("min coefficient of friction is,%f ",u)
