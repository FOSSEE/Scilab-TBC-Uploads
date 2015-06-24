clear
clc
//to find force to be applied on conveyor belt to keep it moving with constant speed 

// GIVEN::

//refer to figure 7-20 fron page no. 151
//rate at which sand is being dropped
dM_by_dt = 0.134//in kg/s
//speed at which sand is being dropped
vx = 0.96//in m/s

// SOLUTION:

//refer to figure 7-20 from page no. 151
//consider +ve x as direction of motion of belt and applying equation for systems of variable mass
//force to be applied on conveyor belt to keep it moving with constant speed
sum_F_extx = (vx*dM_by_dt)//in N 
printf ("\n\n Force to be applied on conveyor belt to keep it moving with constant speed sum_F_extx = \n\n %.3f N",sum_F_extx);
