//Two ships
//refer fig.14.8,14.9 and 14.10
//Taking west direction as x-axis and north direction as y-axis
//velocities in kmph are
vAx=30*sind(30)
vAy=30*cosd(30)
vBx=40*sind(45)
vBy=-40*sind(45)
vrx=15-28.284
vry=25.98-(-28.284)
vr=sqrt((13.284^2)+(54.264^2))
theta=atand((13.284)/(54.264))  //degree
printf("\nFrom B, ship A appears to move with a velocity of %.2f kmph in N %.2f degree E direction",vr,theta)
//relative distance after half an hour (drel)
drel=55.866*(1/2)  //km
printf("\nRelative distance after half an hour=%.2f km",drel)


