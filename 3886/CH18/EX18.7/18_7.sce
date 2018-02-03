//Ball is dropped
//refer fig. 18.7 
//Normal to line of impact
u1x=1.986  //m/sec
//In the line of impact
u1y=-7.411  //m/sec
//Let the velocity after impact be v1
v1x=u1x
//Initial and final velocities of floor=0
//From the defination of coefficient of restitution
v1y=sqrt((1.986^2)+(5.929^2))  //m/sec
theta=atand(v1x/v1y)  //degree to the line of impact
//Inclination to the plane
I=90-18.52  //degree  The answer provided in the textbook is wrong
printf("\nv1=%.3f m/sec\nInclination to the plane=%.3f degree",v1,I)
