


 clc
//to find time t1 at which the ball reaches highest position of its trajectory
//maximun height at which ball can reach
//total time of flight and range of ball
//velocity of ball when it strikes the ground

// GIVEN::

//initial velocity of ball 
v0 =15.5//in m/s
//angle made by the ball with horizontal
fi0 = 36//in degrees


//acceleration due to gravity
g = 9.81//in m/s^2



// SOLUTION:

//vertical component of initial velocity of ball
v0y = v0*sind(fi0)//in m/s
//vertical component of initial velocity of ball
v0x = v0*cosd(fi0)//in m/s
//velocity at the top position of trajectory
vy = 0//in m/s
// time t1 at which the ball reaches highest position of its trajectory
//applying kinematic equatio
t1 = (v0y-vy)/g//in seconds
///maximun height at which ball can reach
//as maximum height is reached at time t = t1
//applying kinematic equatio
y_max = v0y*t1-(0.5*g*t1^2)//in meters
//total time of flight and range of ball
//for total time displacement = 0 i.e.y = 0
//applying kinematic equatio
t2 = (2*v0y)/g//in seconds
//range of the ball
//here range is the horizontal distance travelled in time t2
//applying kinematic equatio
x = v0x*t2//in m/s
///velocity of ball when it strikes the ground
 //horizontal componebt of velocty of ball when it strikes the ground
vx = v0*cosd(fi0)//in m/s
//vertical component of velocity of ball when it strikes the ground i.e. at time t2
vy = v0y-(g*t2)//in m/s
//applying kinematic equatiovy = v0y-(g*t2)//in m/s
//magnitude of velocity of ball when it strikes the ground
v = sqrt(vx^2 + vy^2)//in m/s
//direction of ball when it strikes the ground from x axis
fi = atand(vy/vx)//in degrees
fi = round(fi)
printf ("\n\n Time t1 at which the ball reaches highest position of its trajectory t1 = \n\n %.2f seconds",t1);
printf ("\n\n Maximun height at which ball can reach y_max = \n\n %.1f meters",y_max);
printf ("\n\n Total time of flight and range of ball t2 = \n\n %.2f seconda",t2);
printf ("\n\n Range of the ball x = \n\n %.1f meters",x);
printf ("\n\n Horizontal componebt of velocty of ball when it strikes the ground vx = \n\n %.1f m/s",vx);
printf ("\n\n Vertical component of velocity of ball when it strikes the ground i.e. at time t2 vy = \n\n %.1f m/s",vy);
printf ("\n\n Magnitude of velocity of ball when it strikes the ground v = \n\n %.1f meters",v);
printf ("\n\n Direction of ball when it strikes the ground from x axis fi = \n\n %2i degrees",fi);
