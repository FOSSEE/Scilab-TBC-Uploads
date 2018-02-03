//ship B approaching port
//refer fig. 14.15 and 14.16
//Considering west as x-axis and south as y-axis
vAx=24*cosd(30)
vAy=24*sind(30)
vBx=-18
vBy=0
//Let relative velocity of A w.r.t. B be vr at an angle alpha to western direction
vrx=vAx-vBx  //kmph
vry=vAy-vBy
v=sqrt((vrx)^2+(vry)^2)  //kmph
alpha=atand(vry/vrx)  //degree
//Holding B stationary and allowing A to move with relative velovity,BC is given by
BC=60*sind(alpha)  //km
//from triangle BCD
DC=sqrt((25^2)+(17.735)^2)  //km
CE=DC  //km
AC=60*cosd(alpha)  //km
AD=AC-DC  //km
AE=AC+CE  //km
//Time taken to reach D
t1=39699*60/40899  //min
//time taken to reach E
t2=74939*60/40599  //min
printf("\nThe two ships can start exchanging signals %.2f min after ship A leaves the port and continue to do so for %.2f min",t1,t2-t1)






