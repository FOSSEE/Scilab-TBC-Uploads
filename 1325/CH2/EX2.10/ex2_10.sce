//to find the acceleration if mass is allowed to fall freely and when efficiency of the gearing were 90%
//gravitaional force (g)=32.2 ft/s^2
clc
//given
Ia=200//lb ft2
Ib=15//lb ft2
G=5//wb==5*wa
m=150//lb
r=8//in
printf("\n")
//the equivalent mass of the geared system referred to the circumference of the drum is given by
//Me=(1/r)^2*(Ia+(G^2*Ib))
Me=(12/r)^2*(Ia+(G^2*Ib))
M=m+Me
a=(m/M)*32.2//acceleration
//if efficiency of gearing is 90% then Me=(1/r^2)*(Ia+(G^2*Ib)/n)
n=.9
Me1=(12/r)^2*(Ia+(G^2*Ib)/n)
M1=Me1+m
a1=(m/M1)*32.2
printf("acceleration = %.2f ft/s2\n",a)
printf("acceleration when gear efficiency is 0.9= %.2f ft/s2\n",a1)
