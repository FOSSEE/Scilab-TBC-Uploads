clc,clear
//Example 1.27
//To find all the angles with a given sine function value

sin_theta = -0.682;
theta=asind(sin_theta);
//This results -43 degree which isnt in 0 to 360 range
//And theta exists in 4th quadrant
//Angles in 1st and 2nd quadrant have +ve sine values

theta1 = 180 - theta ;//reflection of theta in 3rd quadrant
theta2 = 360 + theta ;//both theta n theta 2 have same trigonometric values
printf('Required angles are %.0f and %.0f degrees',theta1,theta2)
