//Ball falls vertically
//refer fig. 18.8
//Velocity of the ball which striking plane=3*g
//Component of velocity down the plane=3*g*sind(20)
//Component of velocity in the line of impact before striking
//vy=-3*g*cosd(20)
//velocity after the impact after striking plane
//vy=2.4*g*cosd(20)
//Acceleration in the line of impact=-g*cosd(20)
//Using kinematic equation
t=4.8  //sec
//vx=3*g*sind(20)
//Acceleration in this direction=g*sind(20)
//Distance travelled in 4.8 sec
s=(3*9.81*t*sind(20))-((9.81*t*t*sind(20))/(2))  //m The answer provided in the textbook is wrong
printf("\nt=%.4f sec\ns=%.4f m",t,s)

