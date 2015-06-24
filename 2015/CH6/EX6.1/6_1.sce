clc
//initialisation of variables
c=400 //steam speed in m/s
alpla=12 //angle in degrees
cwo=0
pi=(22/7)
//CALCULATIONS
u=c*cos(12*(pi/180))/2
cwi=c*cos(12*(pi/180))
cfi=c*sin(12*(180/pi))
thetha=atan(cfi/(cwi-u))*(pi/180)
cro=sqrt((cfi)^2+(cwi-u)^2)
phi=acos(u/cro)*(180/pi)
wo=(cwi-cwo)*u
ke=(c)^2/2
eff=wo/ke
//RESULTS
printf('blade efficiency is %2f',eff)
