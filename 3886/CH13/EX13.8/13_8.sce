//Find the least initial velocity
//refer fig. 13.10
//Let u the initial velocity required and alpha the angle of projection
//here
range=9  //m
//at P x=5m and y=4m
//u^2=(9*g)/(sind(2*alpha)) 
//from the equation of trajectory
alpha=atand(1.8)  //degree
//thus
u=sqrt((9*9.81)/(sind(2*60.95)))  //m/sec
printf("u=%.2f m/sec",u)



