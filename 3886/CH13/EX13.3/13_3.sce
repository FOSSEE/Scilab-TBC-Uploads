//Pressure tank
//refer fig. 13.5
//Required velocity to enter at B
h=1  //m
//If t1 is the time of flight , considering vertical motion
t1=sqrt(2/9.81)  //sec
//Considering horizontal motion
u1=3/t1  //m/sec
//Required velocity to enter at C
//let t2  be the time required for flight from A to C
bh=2.5  //m
Range=3  //m
//Considering Vertical motion
t2=sqrt((2*2.5)/9.81)  //sec
//Considering horizontal motion
u2=3/t2  //m/sec
printf("The range of velocity for which the jet can enter the opening BC is %.2f m/sec to %.2f m/sec",u2,u1)




