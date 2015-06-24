clc,clear
//Example 1.13
//To find the horizontal distance from blimp to house

//consider the figure attached
angle_dep = 24 //angle of depression in degrees
theta = angle_dep  //angle of elevation
height_blimp = 4280 //height of blimp from ground in feet
x = height_blimp  / tand(theta) //required distance in feet

printf('The house is %.0f ft far from blimp along the ground',x)
