//car and lorry
//refer fig. 17.13 (a) and (b)
//Let the velocity of vehicle after collision be vx in x direction and vy in y direction
vx=18  //kmph
//applying impulse momentum equation in y-direction
vy=12  //kmph
//Resultant velocity
v=sqrt((vx^2)+(vy^2))  //kmph
//its inclination to main road
theta=atand(vy/vx)  //degree
printf("\nv=%.3f kmph\ntheta=%.3f degree",v,theta)
