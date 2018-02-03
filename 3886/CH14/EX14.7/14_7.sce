//ship approaching port
//refer fig. 14.13 and 14.14
//let west be x and north be y axes 
//speed in kmph is 
vBx=25*sind(45)
vBy=25*cosd(45)
vAx=-15
vAy=0
//Let vr be the relative velocity of B w.r.t. A
vrx=17.678-(-15)  //kmph
vry=17.678   //kmph
vr=sqrt((32.678^2)+(17.678^2))  //kmph
alpha=atand(17.678/32.678)  //degree
t=(50*cosd(alpha))/(vr)  //hours
//during this time A has moved in east by (da)
da=15*1.1837  //km
//and B has moved in N 45 degree W a distance (db)
db=25*1.1837  //km
printf("\nt=%.2f hours\nA has moved in east by da=%.2f km\nB has moved in N 45 degree W a distance db=%.2f km",t,da,db)




