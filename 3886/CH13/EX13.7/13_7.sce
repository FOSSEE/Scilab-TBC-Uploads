//Projectile
//let u be the initial velocity and alpha its angle of projection
//Vertical component of velocity=u*sind(alpha)
//Horizontal component of velocity=u*cosd(alpha)
//thus according to given condition
alpha=atand(1/2)  //degree
//when x=18 m y=3 m
//using equation of trajectory
u=sqrt((9.81*(18^2))/(6*2*(cosd(26.565))^2))  //m/sec
g=9.81  //m/sec
//range on the horizontal plane  (range)
range=((u^2)*sind(2*alpha))/(g)  //m
printf("Range on the horizontal plane=%.2f m",range)
