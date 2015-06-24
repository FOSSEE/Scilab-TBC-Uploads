clc();
clear;
//Given :
//Intercepts
ix = 1/3 ; //along x-axis
iy = 2/3; // along y-axis
iz =1; // along z-axis
//Reciprocals
rx = 1/ix;
ry = 1/iy;
rz = 1/iz;
//Conversion
x = rx*2;
y = ry*2;
z = rz*2;
printf("Miller indices of the plane are : ( %d %d %d )",x,y,z);
