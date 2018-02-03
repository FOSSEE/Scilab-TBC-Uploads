//Rocket released from fighter jet
//refer fig. 13.6
h=3000  //m
//If t is time of flight then
//using equations of motion
t=sqrt((2*3000)/(9.81))  //sec
u=(1200*1000)/(60*60)  //m/sec
//Horizontal distance covered during the time of flight=range
a=6  //m/sec^2
Range=u*t+(1/2)*a*(t^2)  //m
//Angle theta below the horizontal at which the pilot must see the target while releasing the rocket is
theta=atand(3000/10078.5)  //degree
printf("Angle theta below the horizontal at which the pilot must see the target while releasing the rocket is=%.3f degree",theta)
