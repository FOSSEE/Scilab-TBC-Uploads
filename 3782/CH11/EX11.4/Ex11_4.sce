
//

//

c=100
h=1.55
rlo=150
ra1=1.155,ra2=1.755,ra3=2.355,

rb1=1.250,rb2=2,rb3=2.750,

t1=30.5,t2=75.5,

a1=4.5,a2=10.25,


printf("\n in 1st observation')
v1=c*(ra3-ra1)*(sin(9*(%pi/180)))
v1=v1/2
d1=c*(ra3-ra1)*(cos(a1*(%pi/180)))*(cos(a1*(%pi/180)))
printf("\n v1,d1= %0.3f %0.3f",v1,d1)

printf("\n in 2nd observation')

v2=c*(rb3-rb1)*(sin(20.5*(%pi/180)))
v2=v2/2
d2=c*(rb3-rb1)*(cos(a2*(%pi/180)))*(cos(a2*(%pi/180)))
printf("\n v2,d2= %0.3f %0.3f",v2,d2)

rl=rlo+h
rla=rl+v1-ra2
rlb=rl+v2-rb2

printf("\n RL of A= %0.3f ",rla)
printf("\n RL of B= %0.3f ",rlb)

t=t2-t1
AB=sqrt((d1*d1+d2*d2)-2*(d1*d2*(cos(t*(%pi/180)))))
printf("\n difference of level AB= %0.3f meters',AB)

dab=rlb-rla
gab=AB/dab
printf("\n gradient of AB is 1 in %0.3f ",gab)
