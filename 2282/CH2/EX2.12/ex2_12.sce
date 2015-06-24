// Example 2.12, page no-43
clear
clc

e=0.6                  // eccentricity of elliptical orbit
a=0.97                 // area of shaded region
b=2.17                 //Area of non-shaded region
t=3                   // time taken by satellite to move from pt B to A

x=b/a
y=x*t             
printf("Time taken by satellite to move from A to B is %.3f hours ",y)
