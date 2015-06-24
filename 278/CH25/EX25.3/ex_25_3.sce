//find..
clc
//solution
//given
r=0.16//m
u=0.3
P=600//N
//taking moment abt point A
//Rn=Ft/u
//Rn*350+Ft*(200-160)=600*(400+350)
Ft=600*750/1207//N
Tb=Ft*r//N-m
printf("torque acting is,%f N-m\n",Tb)