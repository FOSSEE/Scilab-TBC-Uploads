//Initilization of variables
d=3 //m
w=8 //rad/s (clockwise)
alpha=4 //rad/s^2 (counterclockwise)
r=d/2 //m
//Calculations
vo=r*w //m/s
ao=r*alpha //m/s^2
//Here OB is r
OB=r //m
v_bo=OB*w //m/s
v_B=v_bo+vo //m/s
//Also
a_bo=r*alpha //m/s^2 (directed left)
a_bo_n=r*w^2 //m/s^2
a_h=ao+a_bo //m/s^2
a_v=a_bo_n //m/s^2
a_B=sqrt((a_h^2)+(a_v^2)) //m/s^2
phi=atand(a_h/a_v) //degrees
//Result
clc
printf('The linear velocity at B is %fm/s and the acceleration is %fn/s^2 making an angle of %f degrees with horizontal',v_B,a_B,phi)



