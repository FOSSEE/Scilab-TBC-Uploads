
//

//

c=100
ra1=1.25,ra2=1.75,ra3=2.25,

rb1=0.95,rb2=1.75,rb3=2.55,

rc1=1.55,rc2=2.15,rc3=2.75,

a1=10,a2=5,a3=8,


ab=c*(ra3-ra1)*(cos(a1*(%pi/180)))*(cos(a1*(%pi/180)))
bc=c*(rb3-rb1)*(cos(a2*(%pi/180)))*(cos(a2*(%pi/180)))
cd=c*(rc3-rc1)*(cos(a3*(%pi/180)))*(cos(a3*(%pi/180)))

printf("\n ab,bc,cd")

lab=ab*(cos(30.5*(%pi/180)))
lbc=-bc*(cos(40*(%pi/180)))
lcd=-cd*(cos(45*(%pi/180)))
printf("\n latitudes of AB,BC,CD= %0.3f %0.3f %0.3f",lab,lbc,lcd)

dab=ab*(sin(30.5*(%pi/180)))
dbc=bc*(sin(40*(%pi/180)))
dcd=-cd*(sin(45*(%pi/180)))
printf("\n depatures of AB,BC,CD  %0.3f %0.3f %0.3f",dab,dbc,dcd)

lc=-(lab+lbc+lcd)
ls=-(dab+dbc+dcd)

printf("\n lc,ls")
k=-ls/lc
t=atan(k)
t=t*(180/(%pi))

printf("\n Bearing of DA= %0.3f ",t)
DA=sqrt(lc*lc+ls*ls)
printf("\n length DA= %0.3f ",DA)
