//find diameter of shaft
clc
//solution
//given
P=100000//W//power
N=160//rpm
//Tmax=1.25 Tmean
t=70//N/mm^2//shear stress
pi=3.14
//P=2*pi*N*Tmean/60
Tmean=(60*P)/(2*pi*N)//Nm
Tmax=1.25*Tmean//Nm
//Tmax=(pi/16)*t*d^3
d=(Tmax*1000*16/(pi*t))^0.33
printf("the mean torques is,%f Nm\n",Tmean)
printf("the max torques is,%f Nm\n",Tmax)
printf("the diametr of shaft is,%f mm",d)