//Ball is dropped from height
u1=sqrt(2*9.81*1)  //m/sec
v1=-sqrt(2*9.81*0.810)  //m/sec
//There is no movement of the floor before and after striking
//u2=0
//v2=0
//From the defination of coefficient of restitution
e=(3.987/4.429)  
//Let the velocity of the ball after second bounce be v2
v2=e*3.987  //m/sec  upward
//Expected height h2
h2=(3.576^2)/(2*9.81)  //m
printf("\nCoefficient of restitution=%.3f \nExpected height of second bounce h2=%.4f m",e,h2)
