
clc 
// Given
a = 1 // let side of a unit cell
b = 1 // let side of a unit cell
c = 1 // let side of a unit cell
x_proj = 0.5*a // x coordinate of point
y_proj = 1*b // y coordinate of point
z_proj = 0*c // z coordinate of point

printf(" Example 3.3\n")
k = 1/x_proj
x_reduction = x_proj*k // reduction in x direction
y_reduction = y_proj*k // reduction in x direction
z_reduction = z_proj*k // reduction in x direction

printf("\n Indices of direction are as [%d %d %d]\n",x_reduction,y_reduction,z_reduction)
