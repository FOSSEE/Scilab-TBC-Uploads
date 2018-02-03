//Length of crank
//refer fig. 22.6 (a)
//angular velocity
omega=(1500*2*%pi)/(60)  //rad/sec
r=0.100
//Tangential velocity of end B
vB=r*omega  //m/sec
//Consider motion of connecting rod BC
theta=asind((100*sind(30))/(250))  //degree
//Refer fig. 22.6
//Let omega' be the angular velocity of BC
omega1=13.6035/0.244  //rad/sec
//Considering horizontal component of velocities
vC=15.7080*cosd(60)+0.25*55.547*sind(11.5378)  //m/sec
printf("\nomega1=%.3f rad/sec\nvC=%.2f m/sec",omega1,vC)


