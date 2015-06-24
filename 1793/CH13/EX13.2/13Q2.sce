clc
//c=0
a=36
G=16
Ka=(1-sind(a))/(1+sind(a))
//at z=0 Tp=0
z=6
To=G*z
Ta=Ka*To
Pa=z*Ta/2

printf('a)Rankine active force per unit length of the wall = %f kN/m',Pa)
printf(' and the location of the resultant is z = 2m\n')


p=36
G=16
Kp=(1+sind(a))/(1-sind(a))
//at z=0 Tp=0
z=6
To=G*z
Tp=Kp*To
Pp=z*Tp/2

printf(' b)Rankine passive force per unit length of the wall = %f kN/m',Pp)
printf(' and the location of the resultant is z = 2m')

