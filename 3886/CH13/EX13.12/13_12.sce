//soldier fires a bullet
//refer fig 13.18
//equation of trajectory of bullet is known thus
//For the point on ground where bullet strikes
y=-50  //m
x=100 //m
u=31.32  //m/sec
//alpha=0 or
alpha=atand(2)  //degree
//when alpha =0
//Horizontal component of velocity
vx=31.32  //m/sec
//Vertical component of velocity
vy=sqrt(2*9.81*50)  //m/sec
//Velocity of strike
v=sqrt((31.32^2)+(31.32^2))  //m/sec
theta=atand(1)  //degree
//when alpha=63.435 degree   vx=14.007 m/sec
//vy=42.02 m/sec
bv=sqrt((14.007^2)+(42.02^2))  //m/sec
btheta= atand(42.02/14.007)  //degree to horizontal
printf("\nalpha=%.2f degree\nv=%.2f m/sec\ntheta=%.2f degree\nv=%.2f m/sec\ntheta=%.2f degree to horizontal",alpha,v,theta,bv,btheta)



 
