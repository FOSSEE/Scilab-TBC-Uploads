//Example 6_3
clc();
clear;
//To find out how fast and the direction car moving
m1=30000   //units in Kg
m2=1200    //units in Kg
v10=10   //units in meters/sec
v20=-25   //units in meters/sec
vf=((m1*v10)+(m2*v20))/(m1+m2)  //unis in meters/sec
printf("The car is moving at vf=%.2f Meters/sec\n",vf)
printf("The positive sign of vf Indicate the car is moving in the direction the truck was moving")
