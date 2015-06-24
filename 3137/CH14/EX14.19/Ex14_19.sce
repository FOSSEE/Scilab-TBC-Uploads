//Calculations
//After equating the i and j terms we obtain simplified equations
//Solving by matrix method
A=[346,86.7;200,-350]
B=[-3700;-1790] 
C=inv(A)*B 
//Result
clc
printf('The angular accelerations are alpha_DC=%frad/s^2 and alpha_BC=%frad/s^2',C(1),C(2)) 
//The signs only indicate that the originally assumed orientations are incorrect and are opposite to those assumed

