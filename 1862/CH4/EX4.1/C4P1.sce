

 clc
//to find ship's velocity and position relative to its locationwhen the tractor beam first appeared

// GIVEN::
//refer to figure 4-1 from page no.66
//problem mainly divides into two parts
//1. t=0 to t=4 seconds   //FIRST PART
//2. t=4 to t=7 seconds   //SECOND PART

//1.for first part i.e.t=0 to t=4 seconds
// time interval for the first part is (4-0)=4
t1 = 4//in seconds
//initial position is (0,0)
x01 = 0
y01 = 0
//initial velocity in x direction for first part
v0x1 = 15//in km/s
//initial velocity in y direction for first part
v0y1 = 0//in km/s
//acceleration in x direction for the first part
ax1 = 0//in km/s^2
//acceleration in y direction for the first part
ay1 = 4.2//in km/s^2

//1.for second part i.e.t=4 to t=7 seconds
// time interval for the second part is (7-4)=3
t2 = 3//in seconds
//initial velocity in x direction for first part
v0x2 = 15//in km/s
//initial velocity in y direction for first part
v0y2 = 16.8//in km/s
//acceleration in x direction for the first part
ax2 = 18//in km/s^2
//acceleration in y direction for the first part
ay2 = 4.2//in km/s^2

// SOLUTION:

//1.for first part i.e.t=0 to t=4 seconds
//final velocity in x direction
vx1 = v0x1 + ax1*t1//in km/s
//final velocity in y direction 
vy1 = v0y1 + ay1*t1//in km/s
//distance travelled in x direction
x1 = x01 + v0x1*t1 + (0.5*ax1*t1^2)//in km
//distance travelled in y direction
y1 = y01 + v0y1*t1 + (0.5*ay1*t1^2)//in km

//1.for second part i.e.t=4 to t=7 seconds
//now the position of ship is (x1,y1)
x02 = x1
y02 = y1
//final velocity in x direction
//applying kinematic equations
vx2 = v0x2 + ax2*t2//in km/s
//final velocity in y direction 
//applying kinematic equatio
vy2 = v0y2 + ay2*t2//in km/s
//distance travelled in x direction
//applying kinematic equatio
x2 = x02 + v0x2*t2 + (0.5*ax2*t2^2)//in km
//distance travelled in y direction
//applying kinematic equatio
y2 = y02 + v0y2*t2 + (0.5*ay2*t2^2)//in km
//distance travelled by of ship
r = sqrt(x2^2 + y2^2)//in km
//velocity of ship
v = sqrt(vx2^2 + vy2^2)//in km/s
//position of ship
theta = atand(vy2/vx2)//in degrees
y2 = round(y2)
r = round(r)
printf ("\n\n Final velocity in x direction for first part vx1 = \n\n %.1f km/s",vx1);
printf ("\n\n Final velocity in y direction for first part vy1 = \n\n %.1f km/s",vy1);
printf ("\n\n Distance travelled in x direction for first part x1 = \n\n %.1f km",x1);
printf ("\n\n Distance travelled in y direction for first part y1 = \n\n %.1f km",y1);

printf ("\n\n Final velocity in x direction for second part vx2 = \n\n %.1f km/s",vx2);
printf ("\n\n Final velocity in y direction for second part vy2 = \n\n %.1f km/s",vy2);
printf ("\n\n Distance travelled in x direction for second part x2 = \n\n %3i km",x2);
printf ("\n\n Distance travelled in y direction for second part y2 = \n\n %3i km",y2);
printf ("\n\n Distance travelled by ship r = \n\n %3i km",r);
printf ("\n\n Velocity of ship v = \n\n %2i km/s",v);
printf ("\n\n Position of ship theta = \n\n %2i degrees",theta);
