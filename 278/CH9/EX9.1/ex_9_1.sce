//find minimum force per pitch and find actual stresses developed
clc
//solution
//given
t=15//mm
d=25//mm
p=75//mm
ftu=400//N/mm^2
tu=320//N/mm^2
fcu=640//N/mm^2
pi=3.14
n=2
FS=4//factor of safety
//min foce per pitch which will rupture the joint
Ptu=(p-d)*t*ftu//N//ultimate teraing reisistance
Psu=n*(pi/4)*d^2^tu//N//ultimate shear stress
Pcu=n*d*t*fcu//N//ultimate crushing stress
//actual stress produced in plates and rivets
Ac=Ptu/4//N
//we know
//Ac=(p-d)*t*fta
fta=Ac/((p-d)*t)//N/mm^2
Ta=Ac*4/(n*pi*d^2)//N/mm^2
fca=Ac/(n*d*t)//N/mm^2
printf("the min force required is,%f N\n",Ptu)
printf("the actual tearing stress acting is,%f N/mm^2\n",fta)
printf("the actual shering stress acting is,%f N/mm^2\n",Ta)
printf("thr crushing resistance stress is ,%f N/mm^2",fca)