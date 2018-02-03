//Bullet fired
//refer fig. 13.13
//velocity of projection
u=(360*1000)/(60*60)  //m/sec
//(a) total time of flight
//method 1
y0=-120  //m
//considering vertical motion and solving quadratic equation
t=12.20  //sec
//method 2
//t1=(100*sind(30))/(9.81)  //sec
//maximum height reached in this time
//h=((100^2)*(sind(30))^2)/(2*9.81)  //m
//during downward motion
//t2=7.1  //sec
//t=t1+t2  //sec
//method 3
//time required to travel from A to D
//t1=10.19  //sec
//g=9.81  //m/sec^2
//distance travelled=120 m
t=12.20 //sec
//(b) Maximum height reached by the bullet
//h=((100^2)*(sind(30))^2)/(2*9.81) m above point A
h=127.42+120  //m above the ground
//(c)Horizontal range
Hrange=100*12.2*cosd(30)  //m
//(d)Velocity of the bullet just before striking the ground
//vertical component of velocity=69.682 m/sec
//horizontal component of velocity=86.603 m/sec
//velocity at strike
v=sqrt((69.682^2)+(86.603^2))  //m/sec
theta=atand(69.682/86.603)  //degree
printf("\nt=%.2f sec\nh=%.2f m above the ground\nHorizontal range=%.2f m\nv=%.2f m/sec\ntheta=%.2f degree",t,h,Hrange,v,theta)

  
