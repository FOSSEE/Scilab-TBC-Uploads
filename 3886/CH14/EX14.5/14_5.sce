//Enemy ship location
//refer fig. 14.10
//taking north as y direction and west as x direction
//vAy=36*cosd(theta)
//vAx=36*sind(theta)
//Components of velocity of enemy ship
vBy=18*cosd(30)  //kmph
vBx=-18*sind(30)  //kmph
//then
//vrx=36*sind(theta)+9
//vry=36*cosd(theta)-15.588
//solving
x=0.2777
theta=16.12  //degree
printf("\nWar ship must move in N %.2f W direction",theta)
vrx=36*sind(theta)+9
vry=36*cosd(theta)-15.588
vr=sqrt((19^2)+(19^2))  //kmph
//relative distance moved
dr=25-5  //km
//time interval 
t=20/26.870  //hour
printf("\n%.2f hour after sighting the enemy ship the shell is to be fired",t)


  
