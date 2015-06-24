// solidification time for various solid shapes
clc
n = 2
v = 1 // let
printf("\n Example 5.3")
A_cube = 6*(v^(1/3))^2// surface area of cube
A_cylinder = 6*%pi*((v/(2*%pi))^(1/3))^2 //surface area of cylinder

A_sphere = 4*%pi*((((3*v)/(4*%pi))^(1/3))^2)
K1 = 1/(A_sphere)^2 // proportional solidification time for sphere
K2 = 1/(A_cube)^2// proportional solidification time for cube
K3 = 1/(A_cylinder)^2// proportional solidification time for cylinder
printf("\n Respective time periods are as:")
printf("\n t_sphere: %.3fC \t t_cube = %.3fC \t t_cylinder = %.3fC",K1,K2,K3 )

