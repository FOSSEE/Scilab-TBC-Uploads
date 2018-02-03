//passenger observing rain drops
//refer fig. 14.17 
//Let the true velocity of rain be v kmph at a true angle theta with vertical
//Taking the direction of train as x and that of vertical downward as y
//Velocity components of train are
//v1x=v*sind(theta)
//v1y=v*cosd(theta)
//when the velocity of train was 36 kmph
v2x=36
v2y=0
//alpha is the direction of relative velocity and is given as 30 degree and when the velocity of train is 54 kmph alpha=45 degree thus
//v*cosd(theta)=v*sind(theta)-54
//v*sind(theta)=-11.402
//solving we get
v=sqrt(4407.43)  //kmph
theta=asind(-(11.402)/(66.388))
printf("\nv=%.3f kmph\ntheta=%.2f degree",v,theta)

