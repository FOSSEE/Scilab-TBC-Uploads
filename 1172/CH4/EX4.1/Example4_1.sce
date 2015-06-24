clc
//Given that
F = [2.5,4.5,-5] // F is a force vector act through origin
// sample Problem 1  Page No. 176
printf("\n\n\n # Problem 1 # \n")
F_magnitude = sqrt ( 2.5^2 + 4.5^2 + (-5)^2)
theta_x = (180 / %pi ) * acos ( 2.5 / F_magnitude)
theta_y = (180 / %pi ) * acos ( 4.5 / F_magnitude)
theta_z = (180 / %pi ) * acos ( -5 / F_magnitude)
printf (" \n Magnitude of force F is %f N", F_magnitude)
printf(" \n Angle made with X - axis is %f degree", theta_x)
printf(" \n Angle made with Y - axis is %f degree" ,theta_y)
printf(" \n Angle made with Z - axis is %f degree", theta_z)
