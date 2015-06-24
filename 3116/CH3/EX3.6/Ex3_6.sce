

clc 
// Given
a = 1// let side of a unit cell
b = 1 //  let side of a unit cell
c = 1 // let side of a unit cell

printf(" Example 3.6\n")
x_proj = 0 // x coordinate of point
y_proj = -1*b // y coordinate of point
z_proj = 0.5*c // z coordinate of point
x_reduction = x_proj*a // reduction in x direction
y_reduction = 1/y_proj// reduction in x direction
z_reduction = 1/z_proj // reduction in x direction

printf("\n Indices of direction are as [%d %d %d]\n",x_reduction,y_reduction,z_reduction)
// while in notation negative value is indicated by a bar over it
