clear
clc
//to find velocity of the recoiling cannon with respect to the earth
//to find initial velocity vE of the ball with respect to the earth  

// GIVEN::

//refer to figure 7-17 fron page no. 149
//mass of cannon
M = 1300//in kg
//mass of ball fired
m = 72//in kg
//speed of ball in horizontal x direction
vx = 55//in m/s

// SOLUTION:

//refer to figure 7-17 from page no. 149
//considering cannon and ball is our system and consider +ve x as right direction
//finding momentum of our system with respect to the earth
//applying conservation of momentum
Vx = -(m*vx)/(M + m)//in m/s //-ve signs as cannon recoils in left direction
//initial velocity vE of the ball with respect to the earth
vEx = vx + Vx//in m/s

printf ("\n\n Velocity of the recoiling cannon with respect to the earth Vx = \n\n %.1f m/s",Vx);
printf ("\n\n Initial velocity vE of the ball with respect to the earth vEx = \n\n %2i m/s",vEx);
