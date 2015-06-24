clear;
clc;

//page no. 108

rho = 0.00238;//slug/cuft
h = 6;//in
V_0 = sqrt(2*(h/12)*(62.4 - rho*32.2)/rho);
printf('The velocity of the air stream = %d fps',V_0);

//there is a small error in the answer given in textbook
