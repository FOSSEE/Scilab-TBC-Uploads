clear
clc
//Example 4.5 ROTATING MANOMETER TUBE
g=9.81; //[m/s^2]
r1=0.18; //[m]
r2=0.36; //[m]
//Initial water levels
h1=0.18; //[m]
h2=0.18; //[m]
w=8; //angular speed[rad/s]
//-z1+z2=w^2*(r2^2-r1^2)/(2*g)
//z1+z2=h1+h2
A=[-1 1;1 1];
B=[w^2*(r2^2-r1^2)/(2*g); h1+h2]
//Az=B, z=(A^-1)*B, z=[z1;z2]
z=inv(A)*B
z1=z(1) //[m]
z2=z(2) //[m]
printf("\nThe new levels of water in the tube are z1 = %.3f m, z2 = %.3f m.\n",z1,z2)