//find exteranal diameter  of shaft
clc
//solution
//given
P=600*10^3//W//power
N=110//rpm
//Tmax=1.2 Tmean
t=63//N/mm^2
l=3000//mm
q=0.024 //rad//angle of twist
//k=di/do=3/8//ratio of inner adn outer diameter
C=84*10^3//N/mm^2
pi=3.14
//P=2*pi*N*Tmean/60
Tmean=60*P/(2*pi*N)//N-m
Tmax=1.2*Tmean//N-m
//Tmax*1000=(pi/16)*t*(do)^3(1-k^4)
do=[{16*Tmax*1000/pi/t}/{1-(3/8)^4}]^0.33//mm
//J=(pi/32)*{do1^4-di^4}
//J=(pi/32)*(do1)^4*{1-(3/8)^4}=0.0962*do1^4
//we know T/J=C*q/l
do1={Tmax*1000*l/(C*q*0.0962)}^(1/4)//mm
printf("the mean torque is ,%f N-m\n",Tmean)
printf("the maximum torque is,%f N-m\n",Tmax)
printf("the outer diameter using strength is,%f mm\n",do)
printf("the outer diameter using stiffness is,%f mm",do1)
