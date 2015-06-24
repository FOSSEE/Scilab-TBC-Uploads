clc 
// Given that
//three metal piece being cast have the same volume but different shapes
//shapes are sphere,cube,cylinder(height=diameter)

// Sample Problem on page no. 252

printf("\n #solidification time for various shapes# \n")

//solidification time is inversely proportional to the square of surface area

//for sphere
r=(3/(4*3.14))^(1/3)//radius of the sphere from volume of sphere v=(4*3.14*r^3)/3
A=4*3.14*((r)^2)
time1=1/(A)^2
printf("\n the solidification time for the sphere is %fC",time1)

//for cube
a=1//edge of the cube
A=6*a^2
time2=1/(A)^2
printf("\n the solidification time for the cube is %fC",time2)

//for cylinder
//given height =diameter 
//radius=2*height
r=(1/(2*3.14))^(1/3)//radius of the cylinder from volume of the cylinder v=3.14*r^2*h
A=(6*3.14*(r^2)) //area of the cylinder = (2*3.14*radius^2) + (2*3.14*radius*height)
time3=1/(A)^2
printf("\n the solidification time for the sphere is %fC",time3)
